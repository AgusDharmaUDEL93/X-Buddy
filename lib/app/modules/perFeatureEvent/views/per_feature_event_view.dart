import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/card_event.dart';
import '../controllers/per_feature_event_controller.dart';

class PerFeatureEventView extends GetView<PerFeatureEventController> {
  const PerFeatureEventView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Popular ${controller.type} Event",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      StreamBuilder(
                          stream: controller.getPopularEvent(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (snapshot.data == null ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                child: Text("No Event"),
                              );
                            }

                            if (snapshot.hasError) {
                              return Center(
                                child: Text(snapshot.error.toString()),
                              );
                            }

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...snapshot.data!.map(
                                    (item) => Row(
                                      children: [
                                        CardEvent(
                                          category: item.category,
                                          title: item.title,
                                          author: item.authorName,
                                          image: item.image,
                                          onTap: () {
                                            Get.toNamed(Routes.EVENT_DETAIL,
                                                parameters: {
                                                  "id": item.eventId
                                                });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Recent Event",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      StreamBuilder(
                          stream: controller.getEvent(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (snapshot.data == null ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                child: Text("No Event"),
                              );
                            }

                            if (snapshot.hasError) {
                              return Center(
                                child: Text(snapshot.error.toString()),
                              );
                            }
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...snapshot.data!.map(
                                    (item) => Row(
                                      children: [
                                        CardEvent(
                                          category: item.category,
                                          title: item.title,
                                          author: item.authorName,
                                          image: item.image,
                                          onTap: () {
                                            Get.toNamed(Routes.EVENT_DETAIL,
                                                parameters: {
                                                  "id": item.eventId
                                                });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
