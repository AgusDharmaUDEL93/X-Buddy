import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../widgets/CardComment.dart';
import '../controllers/discussion_detail_controller.dart';

class DiscussionDetailView extends GetView<DiscussionDetailController> {
  const DiscussionDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var dummyList = [0, 1, 2, 3, 4];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Menggunakan @inject constructor pada interactor class di domain layer",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "by Agus Dharma",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Pada domain layer kita tidak disarankan untuk menambahkan framework/library sehingga hanya menggunakan pure kotlin. Namun pada implementasinya dari modul, kita  menggunakan dagger untuk kelas interactor yang berada pada domain layer  dengan menambahkan @inject constructor yang merupakan bagian dari dagger. Apakah ini tidak menyalahi rule dari clean architecture ? terimakasih, mohon penjelasannya",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Comment"),
                        hintText: "Insert Your Comment",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton.filled(onPressed: () {}, icon: Icon(Icons.send))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              SizedBox(
                height: 12,
              ),
              ...dummyList.map(
                (item) => Column(
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
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
