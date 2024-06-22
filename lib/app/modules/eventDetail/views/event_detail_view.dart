import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_detail_controller.dart';

class EventDetailView extends GetView<EventDetailController> {
  const EventDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : StreamBuilder(
                stream: controller.getEventDetail(),
                builder: (context, snapshot) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Image Banner event
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              width: Get.width,
                              snapshot.data?.image ??
                                  "https://placehold.co/400x600.png",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),

                        //Tags Jenis Event
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.8,
                                  color: Theme.of(context).colorScheme.outline),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            snapshot.data?.category ?? "No Category",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                    fontSize: 12),
                          ),
                        ),

                        //Judul Event
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 3),
                          child: Text(
                            snapshot.data?.title ?? "No Title",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'By: ${snapshot.data?.authorName}',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                    fontSize: 8),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        //time, scheduled, location section, people joined
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13, top: 5),
                            child: Icon(Icons.location_on,
                                size: 20,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              snapshot.data?.location ?? "No Location",
                              style: Theme.of(context).textTheme.labelSmall,
                              maxLines: 5,
                            ),
                          ),
                        ]),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13, top: 5),
                            child: Icon(Icons.calendar_month,
                                size: 20,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              snapshot.data?.date ?? "00 - 00 - 0000",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ]),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13, top: 5),
                              child: Icon(Icons.access_time,
                                  size: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 5),
                              child: Text(
                                snapshot.data?.time ?? "00 : 00",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13, top: 5),
                              child: Icon(Icons.people,
                                  size: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 5),
                              child: Text(
                                snapshot.data?.participant.toString() ?? "0",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                        //description
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                              snapshot.data?.description ?? "No Description",
                              style: Theme.of(context).textTheme.bodySmall),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),

      //Floating or Fixed Button to join event
      bottomNavigationBar: Obx(
        () => controller.isLoading.value
            ? Container()
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: SizedBox(
                  width: Get.width * 0.9,
                  child: ElevatedButton(
                    onPressed: controller.onAddEvent,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: controller.isJoined.value
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.primary,
                    ),
                    child: controller.isJoined.value
                        ? Text(
                            'Cancel',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          )
                        : Text(
                            'Join',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                  ),
                ),
              ),
      ),
    );
  }
}
