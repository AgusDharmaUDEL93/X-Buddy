import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
        title: Text(controller.keywords),
        actions: [
          SearchAnchor(
            textInputAction: TextInputAction.search,
            viewOnSubmitted: (value) {
              Get.toNamed(Routes.SEARCH_RESULT,
                  parameters: {"keywords": value});
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
        child: StreamBuilder(
            stream: controller.getEvent(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.data == null || snapshot.data!.isEmpty) {
                return const Center(
                  child: Text("No Event"),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
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
                    category: snapshot.data?[index].category ?? "",
                    title: snapshot.data?[index].title ?? "",
                    author: snapshot.data?[index].authorName ?? "Anonim",
                    image: snapshot.data?[index].image ?? "",
                    onTap: () {
                      Get.toNamed(Routes.EVENT_DETAIL, parameters: {
                        "id": snapshot.data?[index].eventId ?? ""
                      });
                    },
                  );
                },
              );
            }),
      ),
    );
  }
}
