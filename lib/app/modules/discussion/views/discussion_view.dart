import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../../widgets/card_discussion.dart';
import '../controllers/discussion_controller.dart';

class DiscussionView extends GetView<DiscussionController> {
  const DiscussionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discussion'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.ADD_DISCUSSION);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: StreamBuilder<List<Post>>(
          stream: controller.getDiscussion(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.data == null || snapshot.data!.isEmpty) {
              return const Center(
                child: Text("No Discussion"),
              );
            }
            if (snapshot.hasError) {
              return const Center(
                child: Text("Error"),
              );
            }

            if (snapshot.data?.length == 0) {
              return const Center(
                child: Text("No Discussion"),
              );
            }
            return ListView.separated(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return CardDiscussion(
                  title: snapshot.data?[index].title ?? "No Title",
                  author: snapshot.data?[index].authorName ?? "Anonim",
                  description: snapshot.data?[index].description ?? "No Desc",
                  onTap: () {
                    Get.toNamed(
                      Routes.DISCUSSION_DETAIL,
                      parameters: {"id": snapshot.data?[index].postId ?? ""},
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
            );
          },
        ),
      ),
    );
  }
}
