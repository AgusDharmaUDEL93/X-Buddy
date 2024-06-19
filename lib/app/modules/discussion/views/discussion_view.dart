import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../../widgets/CardDiscussion.dart';
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
            if (snapshot.hasError) {
              return const Center(
                child: Text("Error"),
              );
            }
            return ListView.separated(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                if (snapshot.data?.length == 0) {
                  return const Center(
                    child: Text("No Discussion"),
                  );
                } else {
                  return CardDiscussion(
                    title: snapshot.data?[index].title ?? "No Title",
                    author: "Agus Dharma",
                    description:
                        "Pada domain layer kita tidak disarankan untuk menambahkan framework/library sehingga hanya menggunakan pure kotlin. Namun pada implementasinya dari modul, kita  menggunakan dagger untuk kelas interactor yang berada pada domain layer  dengan menambahkan @inject constructor yang merupakan bagian dari dagger. Apakah ini tidak menyalahi rule dari clean architecture ? terimakasih, mohon penjelasannya",
                  );
                }
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
