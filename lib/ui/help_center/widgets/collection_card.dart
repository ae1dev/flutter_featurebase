part of featurebase;

class _CollectionCard extends StatelessWidget {
  final fb.Collection collection;
  final Color textColor;
  const _CollectionCard({
    // ignore: unused_element
    super.key,
    required this.collection,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => _CollectionView(
              collection: collection,
              textColor: textColor,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: textColor.withOpacity(0.05),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Collection Icon
            if (collection.icon != null)
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: textColor.withOpacity(0.05),
                  ),
                  color: Theme.of(context).primaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _FBIconWidget(
                  icon: collection.icon,
                  primaryColor: Theme.of(context).primaryColor,
                ),
              ),
            Text(
              collection.name,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 2),
            Text(
              collection.description,
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontSize: 14,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                _AuthorsImageStack(
                  authors: collection.authors,
                ),
                const SizedBox(width: 2),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: (collection.structure?.length).toString(),
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                      TextSpan(
                        text: ' articles',
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 13,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
