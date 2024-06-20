import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../widgets/card_comment.dart';
import '../controllers/discussion_detail_controller.dart';

class DiscussionDetailView extends GetView<DiscussionDetailController> {
  const DiscussionDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    var dummyList = [0, 1, 2, 3, 4];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.post.title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "by ${controller.post.authorName}",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                controller.post.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Comment"),
                        hintText: "Insert Your Comment",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton.filled(
                      onPressed: () {}, icon: const Icon(Icons.send))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(),
              const SizedBox(
                height: 12,
              ),
              ...dummyList.map(
                (item) => const Column(
                  children: [
                    CardComment(
                      author: "Siswadi Perdana",
                      comment:
                          "Halo kak, saya jawab sepengetahuan saya ya bisa di koreksi kalo salah kak, DI atau Dependency Injection sendiri merupakan suatu design pattern OOP yang bisa kita aplikasikan untuk membuat kode yang baik dan Dagger sendiri merupakan library yang menyediakan DI itu sendiri sehingga tidak masalah dan tidak melanggar aturan untuk berada di domain layer, Clean Arch sendiri yaitu untuk memisahkan kode bisnis dengan kode infrastruktur agar modul tingkat tinggi tidak saling bergantungan langsung. Jadi tidak masalah jika menggunakan library Dependecy Injection di dalam domain.",
                    ),
                    SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
