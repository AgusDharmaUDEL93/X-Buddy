import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_detail_controller.dart';

class EventDetailView extends GetView<EventDetailController> {
  const EventDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image Banner event
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  width: Get.width,
                  "assets/img/event 1.jpeg",
                ),
              ),
            ),
            const SizedBox(height: 5),

            //Tags Jenis Event
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.8, color: Theme.of(context).colorScheme.outline),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Seminar',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.outline,
                    fontSize: 12),
              ),
            ),

            //Judul Event
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
              child: Text(
                'DevCoach 155 : Data Science | Memahami Algoritma Machine Learning untuk Data Science',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Oleh: GDSC Universitas Muhammadiyah Surakarta',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outline, fontSize: 8),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            const SizedBox(height: 5),
            //time, scheduled, location section
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 5),
                child: Icon(Icons.location_on,
                    size: 20,
                    color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  'Zoom (Online)',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 5),
                child: Icon(Icons.calendar_month,
                    size: 20,
                    color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  '16 Juni 2024',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 5),
                child: Icon(Icons.access_time,
                    size: 20,
                    color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  '19:00 - 22:00',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ]),
            //description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                  'GDSC Seminar kali ini akan membahas materi dan pertanyaan seputar Data Science dengan tema "Memahami Algoritma Machine Learning untuk Data Science" Sesi ini membahas tipe-tipe, algoritma, pentingnya machine learning, serta hubungannya dengan Data Science. Dilengkapi latihan praktis untuk memahami dan menerapkan algoritma Machine Learning pada berbagai kasus data.  Untuk kamu yang ingin mendapatkan sertifikat kehadiran, silakan untuk mendaftar terlebih dahulu dengan klik “Daftar Gratis”.',
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),

      //Floating or Fixed Button to join event
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: SizedBox(
          width: Get.width * 0.9,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              'Join',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
