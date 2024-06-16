import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
    required this.category,
    required this.title,
    required this.author,
    required this.image,
    required this.onTap,
  });

  final String category;
  final String title;
  final String author;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 155,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: Image.asset(
                "assets/img/event 1.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        category,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "By: $author",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // return InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     width: 155,
    //     margin: const EdgeInsets.symmetric(horizontal: 16),
    //     clipBehavior: Clip.hardEdge,
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //           width: 0.8,
    //           color: Theme.of(context).colorScheme.outlineVariant,
    //           style: BorderStyle.solid),
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Image.asset(
    //           "assets/img/event 1.jpeg",
    //           fit: BoxFit.cover,
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Wrap(
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 5),
    //               child: Container(
    //                 padding: const EdgeInsets.symmetric(horizontal: 5),
    //                 margin:
    //                     const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    //                 decoration: BoxDecoration(
    //                     border: Border.all(
    //                         width: 0.8,
    //                         color: Theme.of(context).colorScheme.outline),
    //                     borderRadius: BorderRadius.circular(5)),
    //                 child: Text(
    //                   category,
    //                   style: Theme.of(context).textTheme.labelLarge?.copyWith(
    //                       fontWeight: FontWeight.w600,
    //                       color: Theme.of(context).colorScheme.outline,
    //                       fontSize: 12),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 10),
    //               child: Text(
    //                 title,
    //                 style: Theme.of(context)
    //                     .textTheme
    //                     .titleMedium
    //                     ?.copyWith(fontWeight: FontWeight.w600),
    //                 overflow: TextOverflow.ellipsis,
    //                 maxLines: 2,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 5,
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(
    //                 left: 10,
    //                 right: 10,
    //                 bottom: 10,
    //               ),
    //               child: Text(
    //                 'By: $author',
    //                 style: Theme.of(context).textTheme.labelMedium?.copyWith(
    //                     color: Theme.of(context).colorScheme.outline,
    //                     fontSize: 8),
    //                 overflow: TextOverflow.ellipsis,
    //                 maxLines: 1,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
