import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/card_event.dart';
import '../controllers/your_event_controller.dart';

class YourEventView extends GetView<YourEventController> {
  const YourEventView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Your Event', style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.ADD_EVENT);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, index) {
            return CardEvent(
              category: "",
              title: '',
              author: '',
              image: "",
              onTap: () {
                // Get.toNamed(Routes.EVENT_DETAIL);
              },
            );
          },
        ),
      ),
    );
  }
}
