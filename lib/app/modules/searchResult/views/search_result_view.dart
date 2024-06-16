import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../../widgets/card_event.dart';
import '../controllers/search_result_controller.dart';

class SearchResultView extends GetView<SearchResultController> {
  const SearchResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminar DevCoach'),
        actions: [
          SearchAnchor(
            textInputAction: TextInputAction.search,
            viewOnSubmitted: (value) {
              Get.toNamed(Routes.SEARCH_RESULT);
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
                        Get.toNamed(Routes.SEARCH_RESULT);
                      });
                },
              );
            },
            builder: (BuildContext context, SearchController controller) {
              return IconButton(
                onPressed: () {
                  controller.openView();
                },
                icon: const Icon(Icons.search),
              );
            },

            // child: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.search),
            // ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.93,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return CardEvent(
              category: "Seminar",
              title:
                  'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
              author: 'GDSC Universitas Muhammadiyah Surakarta',
              image: "",
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
