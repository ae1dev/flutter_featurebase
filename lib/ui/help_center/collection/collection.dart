part of featurebase;

class _CollectionView extends StatefulWidget {
  final fb.Collection collection;
  final Color textColor;
  final Locale locale;
  const _CollectionView({
    // ignore: unused_element, unused_element_parameter
    super.key,
    required this.collection,
    required this.textColor,
    required this.locale,
  });

  @override
  State<_CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<_CollectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.collection.icon != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: _FBIconWidget(
                          icon: widget.collection.icon,
                          textColor: widget.textColor,
                          size: 36,
                          isDark: false,
                        ),
                      ),
                    Text(
                      widget.collection.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: widget.textColor,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    if (widget.collection.description.trim().isNotEmpty)
                      Text(
                        widget.collection.description,
                        style: TextStyle(
                          color: _mutedColor(context),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.start,
                      ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: widget.collection.structure?.length ?? 0,
              itemBuilder: (context, index) {
                bool articleBefore = false;
                bool articleAfter = false;

                //Check if the previous item is an article
                if (index != 0) {
                  widget.collection.structure![index - 1].when(
                    article: (article) {
                      articleBefore = true;
                    },
                    collection: (collection) {
                      articleBefore = false;
                    },
                  );
                }

                //Check if the next item is an article
                if (index != (widget.collection.structure!.length - 1)) {
                  widget.collection.structure![index + 1].when(
                    article: (article) {
                      articleAfter = true;
                    },
                    collection: (collection) {
                      articleAfter = false;
                    },
                  );
                }

                return widget.collection.structure![index].when(
                  article: (article) {
                    BorderRadius borderRadius = BorderRadius.only(
                      topLeft:
                          !articleBefore ? Radius.circular(8) : Radius.zero,
                      topRight:
                          !articleBefore ? Radius.circular(8) : Radius.zero,
                      bottomLeft:
                          !articleAfter ? Radius.circular(8) : Radius.zero,
                      bottomRight:
                          !articleAfter ? Radius.circular(8) : Radius.zero,
                    );

                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: borderRadius,
                        border: Border(
                          top: !articleBefore
                              ? BorderSide(
                                  color:
                                      widget.textColor.withValues(alpha: 0.1),
                                )
                              : BorderSide.none,
                          left: BorderSide(
                            color: widget.textColor.withValues(alpha: 0.1),
                          ),
                          right: BorderSide(
                            color: widget.textColor.withValues(alpha: 0.1),
                          ),
                          bottom: !articleAfter
                              ? BorderSide(
                                  color:
                                      widget.textColor.withValues(alpha: 0.1),
                                )
                              : BorderSide.none,
                        ),
                      ),
                      child: InkWell(
                        borderRadius: borderRadius,
                        onTap: () {
                          _callHaptic();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => _ArticleView(
                                article: article,
                                textColor: widget.textColor,
                                locale: widget.locale,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 11,
                            horizontal: 8,
                          ),
                          child: Row(
                            children: [
                              if (article.icon != null)
                                Container(
                                  margin: const EdgeInsets.only(right: 7),
                                  child: _FBIconWidget(
                                    icon: article.icon,
                                    textColor: widget.textColor,
                                    size: 21,
                                  ),
                                ),
                              Expanded(
                                child: Text(
                                  article.title,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: _mutedColor(context),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_rounded,
                                color: _mutedColor(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  collection: (collection) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: widget.textColor.withValues(alpha: 0.1),
                        ),
                      ),
                      child: Column(
                        children: [
                          //Header
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 7,
                            ),
                            decoration: BoxDecoration(
                              color: widget.textColor.withValues(alpha: 0.05),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                            child: Row(
                              children: [
                                if (collection.icon != null)
                                  Container(
                                    margin: const EdgeInsets.only(right: 7),
                                    child: _FBIconWidget(
                                      icon: collection.icon,
                                      textColor: widget.textColor,
                                      size: 21,
                                    ),
                                  ),
                                Expanded(
                                  child: Text(
                                    collection.name,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: widget.textColor
                                          .withValues(alpha: 0.7),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Articles
                          ...List.generate(
                            collection.structure?.length ?? 0,
                            (int indexCollection) {
                              return collection.structure![indexCollection]
                                  .when(
                                article: (article) {
                                  return InkWell(
                                    borderRadius:
                                        (collection.structure?.length ?? 0) -
                                                    1 ==
                                                indexCollection
                                            ? BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              )
                                            : null,
                                    onTap: () {
                                      _callHaptic();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => _ArticleView(
                                            article: article,
                                            textColor: widget.textColor,
                                            locale: widget.locale,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 11,
                                        horizontal: 8,
                                      ),
                                      child: Row(
                                        children: [
                                          if (article.icon != null)
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 7),
                                              child: _FBIconWidget(
                                                icon: article.icon,
                                                textColor: widget.textColor,
                                                size: 21,
                                              ),
                                            ),
                                          Expanded(
                                            child: Text(
                                              article.title,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: _mutedColor(context),
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.fade,
                                              softWrap: false,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_right_rounded,
                                            color: _mutedColor(context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                collection: (fb.Collection collection) {
                                  return Text('Unknown');
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 80),
            ),
          ],
        ),
      ),
    );
  }
}
