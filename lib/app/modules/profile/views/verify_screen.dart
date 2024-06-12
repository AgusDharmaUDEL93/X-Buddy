import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        title: Text(
          "Verify Your Identity",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.scrim),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 23, left: 16, right: 16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert Your Name Base Your Identity",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim),
                  label: Text("Name"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert Your NIK Base Your Identity",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim),
                  label: Text("NIK"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 55),
            Center(
              child: SizedBox(
                width: 328,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.to(VerifyScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
