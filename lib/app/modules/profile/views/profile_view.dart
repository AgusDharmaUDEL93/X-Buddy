import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/profile/views/open_verify.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final page = Get.put(ProfileController());
    return Scaffold(
      body:
          //verify_account
          Obx(
        () {
          if (page.isLogin.value == true && page.isVerify.value == true) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 44, right: 16, left: 16),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Giarty',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .scrim),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'giarty.kireina@gmail.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outline),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Verified',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Account Setting',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Password Setting',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Applied Event',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Your Event',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Center(
                                child: SizedBox(
                                  width: 328,
                                  child: Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .inversePrimary),
                                      child: Text(
                                        'Logout',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 289.10),
                  ],
                ),
              ),
            );
          }

          //not_verify_page
          else if (page.isLogin.value == true && page.isVerify.value == false) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 44, right: 16, left: 16),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Giarty',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .scrim),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'giarty.kireina@gmail.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outline),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Not Verified',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .error,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Center(
                                  child: SizedBox(
                                    width: 328,
                                    child: Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Get.to(OpenVerify());
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .inverseSurface,
                                            side: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary)),
                                        child: Text(
                                          'Verify Account',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .background),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Account Setting',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Password Setting',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Applied Event',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .scrim),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_right,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .scrim,
                                              size: 34,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Center(
                                child: SizedBox(
                                  width: 328,
                                  child: Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .inversePrimary),
                                      child: Text(
                                        'Logout',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 289.10),
                  ],
                ),
              ),
            );
          }

          //login_page
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 44.0, left: 16, right: 16),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 328,
                      child: Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.inversePrimary),
                          child: Text('Login',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelLarge),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: SizedBox(
                      width: 328,
                      child: Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.inverseSurface,
                              side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          child: Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
