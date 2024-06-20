import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/event.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/card_event.dart';
import '../controllers/your_event_controller.dart';

class YourEventView extends GetView<YourEventController> {
  const YourEventView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(YourEventController());
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Your Event', style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
              onPressed: () {
                controller.checkUserVerification();
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GetBuilder<YourEventController>(
          builder: (_) => StreamBuilder<List<Event>>(
              stream: controller.getYourEvent(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary));
                }
                if (snapshot.hasError) {
                  print('Error: ${snapshot.error}');
                  print('Snapshot has data: ${snapshot.data}');
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  print('ini dijalankan');

                  return MasonryGridView.builder(
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: snapshot.data?.length,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemBuilder: (_, index) {
                      final event = snapshot.data![index];
                      return CardEvent(
                        category: event.category,
                        title: event.title,
                        author: event.authorName,
                        image: event.imageUrl,
                        onTap: () {
                          Get.toNamed(Routes.EDIT_EVENT,
                              arguments: event.toJson());
                        },
                      );
                    },
                  );
                } else {
                  print('No data available');
                  return const Center(
                    child: Text('No data available'),
                  );
                }
              }),
        ),
      ),
    );
  }
}
