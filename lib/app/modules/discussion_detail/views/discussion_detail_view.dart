import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../widgets/card_comment.dart';
import '../controllers/discussion_detail_controller.dart';

class DiscussionDetailView extends GetView<DiscussionDetailController> {
  const DiscussionDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: StreamBuilder(
                      stream: controller.getDiscussionDetail(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasError) {
                          return const Center(
                            child: Text("Error"),
                          );
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data?.title ?? "No Title",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "by ${snapshot.data?.authorName}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              snapshot.data?.description ?? "No Description",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Form(
                              key: controller.formKey,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: controller.commentController,
                                      validator: controller.onCommentValidation,
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
                                    onPressed: controller.onSubmitComment,
                                    icon: const Icon(Icons.send),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 12,
                            ),
                            ...snapshot.data!.comment.map(
                              (item) => Column(
                                children: [
                                  CardComment(
                                    author: item.authorName,
                                    comment: item.comment,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            )
                          ],
                        );
                      }),
                ),
              ),
      ),
    );
  }
}
