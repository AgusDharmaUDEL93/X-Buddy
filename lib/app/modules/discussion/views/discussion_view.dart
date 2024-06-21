import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../../widgets/card_discussion.dart';
import '../controllers/discussion_controller.dart';

class DiscussionView extends GetView<DiscussionController> {
  const DiscussionView({Key? key}) : super(key: key);
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
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) => CardDiscussion(
            title:
                'Menggunakan @inject constructor pada interactor class di domain layer',
            author: "Agus Dharma",
            description:
                "Pada domain layer kita tidak disarankan untuk menambahkan framework/library sehingga hanya menggunakan pure kotlin. Namun pada implementasinya dari modul, kita  menggunakan dagger untuk kelas interactor yang berada pada domain layer  dengan menambahkan @inject constructor yang merupakan bagian dari dagger. Apakah ini tidak menyalahi rule dari clean architecture ? terimakasih, mohon penjelasannya",
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 16,
          ),
        ),
      ),
    );
  }
}
