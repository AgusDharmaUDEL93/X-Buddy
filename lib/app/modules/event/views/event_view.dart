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
                print('Submitted: $value');
                Get.toNamed(Routes.SEARCH_RESULT);
              },
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  hintText: 'Hinted search text',
                  controller: controller,
                  textInputAction: TextInputAction.search,
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  onSubmitted: (value) {
                    print('Submitted: $value');
                    Get.toNamed(Routes.SEARCH_RESULT);
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
                  5,
                  (int index) {
                    final String item = 'item $index';
                    return ListTile(
                        title: Text(item),
                        onTap: () {
                          controller.closeView(item);
                          Get.toNamed(Routes.SEARCH_RESULT);
                        });
                  },
                );
              },
            ),
          ),
        ),
        body: Padding(
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
                          Get.toNamed(Routes.PER_FEATURE_EVENT);
                        },
                      ),
                      CardFeature(
                        image: "assets/svg/seminar.svg",
                        label: "Seminar",
                        onTap: () {
                          Get.toNamed(Routes.PER_FEATURE_EVENT);
                        },
                      ),
                      CardFeature(
                        image: "assets/svg/tech_talk.svg",
                        label: "Tech Talk",
                        onTap: () {
                          Get.toNamed(Routes.PER_FEATURE_EVENT);
                        },
                      ),
                      CardFeature(
                        image: "assets/svg/workshop.svg",
                        label: "Workshop",
                        onTap: () {
                          Get.toNamed(Routes.PER_FEATURE_EVENT);
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Seminar Event",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CardEvent(
                        category: "Seminar",
                        title:
                            'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                        author: 'GDSC Universitas Muhammadiyah Surakarta',
                        image: "",
                        onTap: () {
                          Get.toNamed(Routes.EVENT_DETAIL);
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
          ),
        ),
      ),
    );
  }
}
