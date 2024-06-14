import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardComment extends StatelessWidget {
  const CardComment({
    super.key,
    required this.author,
    required this.comment,
  });

  final String author;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            author,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            comment,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
