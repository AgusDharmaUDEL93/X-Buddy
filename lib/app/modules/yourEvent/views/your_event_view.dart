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
        child: GetBuilder<YourEventController>(
          builder: (_) => StreamBuilder<List<Event>>(
              stream: controller.getYourEvent(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary));
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else if (snapshot.hasData) {
                  for (var event in snapshot.data!) {
                    print(
                        'Event: ${event.title}, ${event.category}, ${event.authorUid}');
                  }
                  return MasonryGridView.builder(
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: snapshot.data!.length,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return CardEvent(
                        category: snapshot.data![index].category,
                        title: snapshot.data![index].title,
                        author: snapshot.data![index].authorUid,
                        image: snapshot.data![index].imageUrl ?? '',
                        onTap: () {
                          // Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      );
                    },
                  );
                } else {
                  return Container();
                }
              }),
        ),
      ),
    );
  }
}
