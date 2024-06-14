import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
    this.onTap,
    required this.title,
  });

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Icon(
            Icons.chevron_right,
          )
        ],
      ),
    );
  }
}
