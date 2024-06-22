import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../data/model/event.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/card_event.dart';
import '../controllers/applied_event_controller.dart';

class AppliedEventView extends GetView<AppliedEventController> {
  const AppliedEventView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Followed Event',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GetBuilder<AppliedEventController>(
          builder: (_) => StreamBuilder<List<Event>>(
              stream: controller.getAppliedEvent(),
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
                        image: event.image,
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL,
                              parameters: {"id": event.eventId});
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
