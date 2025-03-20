import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_viewmodel.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_list.dart';

class BookmarkCard extends StatelessWidget {
  final BookmarkViewModel bookmark;

  const BookmarkCard({
    super.key,
    required this.bookmark,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Image.network(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    bookmark.image,
                    width: 150.0,
                    height: 150.0,
                  ),
                  Positioned(
                    right: 2.0,
                    bottom: 2.0,
                    child: CookingTime(
                      cookingMins: bookmark.totalPrepTime,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookmark.title,
                      maxLines: 2,
                      style: context.appTheme.bodyRegular.bold,
                    ),
                    const SizedBox(height: 8.0),
                    HtmlWidget(
                      bookmark.summary.length > 60
                          ? "${bookmark.summary.substring(0, 50)}..."
                          : bookmark.summary,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Health Score: ${bookmark.healthScore}",
                      maxLines: 2,
                      style: context.appTheme.bodySmall.semiBold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
