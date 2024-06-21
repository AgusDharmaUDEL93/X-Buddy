import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

class CardDiscussion extends StatelessWidget {
  const CardDiscussion({
    super.key,
    required this.title,
    required this.author,
    required this.description,
  });

  final String title;
  final String author;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DISCUSSION_DETAIL);
      },
      child: Container(
        width: Get.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "by $author",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
