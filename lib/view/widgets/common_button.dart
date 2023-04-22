import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CommonButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cScheme = Theme.of(context).colorScheme;
    final tTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(12),
        color: cScheme.surfaceVariant,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
          child: Text(
            title,
            style: tTheme.titleMedium?.copyWith(
              color: cScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
