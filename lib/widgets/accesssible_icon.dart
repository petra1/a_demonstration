import 'package:flutter/material.dart';

class AccesssibleIcon extends StatelessWidget {
  const AccesssibleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.accessible_forward,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
