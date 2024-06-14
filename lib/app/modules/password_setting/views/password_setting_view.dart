import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/profile/views/profile_view.dart';

import '../controllers/password_setting_controller.dart';

class PasswordSettingView extends GetView<PasswordSettingController> {
  const PasswordSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Setting"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Old Password"),
                  hintText: "Insert your old password",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("New Password"),
                  hintText: "Insert your new password",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("New Password Confirm"),
                  hintText: "Confirm your new password",
                ),
              ),
              SizedBox(
                height: 55,
              ),
              SizedBox(
                width: Get.width,
                child: FilledButton(
                  onPressed: () {},
                  child: Text("Change Password"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
