import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
                "Popular Seminar Event",
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
                "Recent Event",
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
                        // Get.toNamed(Routes.EVENT_DETAIL);
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
    );
  }
}
