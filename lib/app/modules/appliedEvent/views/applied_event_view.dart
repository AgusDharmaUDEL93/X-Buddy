import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/applied_event_controller.dart';

class AppliedEventView extends GetView<AppliedEventController> {
  const AppliedEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppliedEventView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AppliedEventView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
