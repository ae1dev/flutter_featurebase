part of featurebase;

class _RenderHtmlWidget extends ConsumerWidget {
  final String html;
  final RenderMode renderMode;
  final Locale locale;
  final Color textColor;
  final bool hideAuthors;

  const _RenderHtmlWidget({
    required this.html,
    this.renderMode = RenderMode.sliverList,
    required this.locale,
    required this.textColor,
    this.hideAuthors = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HtmlWidget(
      html,
      onTapUrl: (url) async {
        if (url.contains(_fbSerivce.api.baseApiUrl) &&
            url.contains('/articles/')) {
          // Extract the article ID from the URL
          final articleId = url.split('/articles/')[1].split('-')[0];

          fb.Article temp = await ref.read(
              GetHelpCenterArticleProvider(articleId, _getLocale(locale))
                  .future);

          if (context.mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _ArticleView(
                  article: temp,
                  textColor: textColor,
                  hideAuthors: hideAuthors,
                  locale: locale,
                ),
              ),
            );
          }

          return true;
        }

        if (await canLaunchUrlString(url)) {
          launchUrlString(url);
          return true;
        }
        return false;
      },
      customWidgetBuilder: (element) {
        // Display images
        if (element.outerHtml.contains('img')) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _SafeCachedNetworkImage(
              imageUrl: element.attributes['src'],
              placeholder: (context, url) => Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          );
        }

        // Callouts
        if (element.outerHtml.contains('callout-component')) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8, top: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _getCalloutColor(
                  element.attributes['color'] ?? 'None', context),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              element.text,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Inter',
                color: _calculateTextColor(_getCalloutColor(
                    element.attributes['color'] ?? 'None', context)),
              ),
            ),
          );
        }

        // Divider
        if (element.outerHtml.contains('<hr>')) {
          return Divider(
            color: textColor.withOpacity(0.2),
          );
        }

        return null;
      },
      customStylesBuilder: (element) {
        if (element.outerHtml.contains('<p>')) {
          Color color = textColor;
          return {
            'color': 'rgba(${color.red}, ${color.green}, ${color.blue}, 255)',
            'opacity': '0.7',
            'font-weight': '500',
          };
        }

        if (element.outerHtml.contains('<h1>')) {
          Color color = textColor;
          return {
            'color': 'rgba(${color.red}, ${color.green}, ${color.blue}, 255)',
            'font-weight': '700',
            'font-size': '22px',
          };
        }

        if (element.classes.contains('link')) {
          Color color = Theme.of(context).primaryColor;
          // rgba(${color.r * 255}, ${color.g * 255}, ${color.b * 255}, 255)',
          return {
            'color': 'rgba(${color.red}, ${color.green}, ${color.blue}, 255)',
            'text-decoration': 'none',
          };
        }
        return null;
      },
      textStyle: TextStyle(
        fontSize: 15,
        fontFamily: 'Inter',
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
      renderMode: renderMode,
    );
  }
}