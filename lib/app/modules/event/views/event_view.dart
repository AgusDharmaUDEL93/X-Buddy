import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../../widgets/card_event.dart';
import '../../../widgets/card_feature.dart';
import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: // Search bar
              Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 5,
            ),
            child: SearchAnchor(
              textInputAction: TextInputAction.search,
              viewOnSubmitted: (value) {
                print("Here");
                Get.back();
                Get.toNamed(Routes.SEARCH_RESULT,
                    parameters: {"keywords": value});
              },
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  hintText: 'Hinted search text',
                  controller: controller,
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.search,
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  onSubmitted: (value) {
                    print('Submitted: $value');
                    Get.back();
                    Get.toNamed(Routes.SEARCH_RESULT,
                        parameters: {"keywords": value});
                  },
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(
                  0,
                  (int index) {
                    final String item = 'item $index';
                    return ListTile(
                        title: Text(item),
                        onTap: () {
                          Get.toNamed(Routes.SEARCH_RESULT);
                        });
                  },
                );
              },
            ),
          ),
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
                          "Feature",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: Get.width,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 16,
                            runSpacing: 16,
                            children: [
                              CardFeature(
                                image: "assets/svg/competition.svg",
                                label: "Competition",
                                onTap: () {
                                  Get.toNamed(Routes.PER_FEATURE_EVENT,
                                      parameters: {"type": "Competition"});
                                },
                              ),
                              CardFeature(
                                image: "assets/svg/seminar.svg",
                                label: "Seminar",
                                onTap: () {
                                  Get.toNamed(Routes.PER_FEATURE_EVENT,
                                      parameters: {"type": "Seminar"});
                                },
                              ),
                              CardFeature(
                                image: "assets/svg/tech_talk.svg",
                                label: "Tech Talk",
                                onTap: () {
                                  Get.toNamed(Routes.PER_FEATURE_EVENT,
                                      parameters: {"type": "Tech Talk"});
                                },
                              ),
                              CardFeature(
                                image: "assets/svg/workshop.svg",
                                label: "Workshop",
                                onTap: () {
                                  Get.toNamed(Routes.PER_FEATURE_EVENT,
                                      parameters: {"type": "Workshop"});
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Popular Event",
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
                          "Other Event",
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
      ),
    );
  }
}
