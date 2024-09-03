import 'package:flutter/material.dart';

class FeaturedListViewItemLoadingIndicator extends StatelessWidget {
  const FeaturedListViewItemLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade200),
        ),
      ),
    );
  }
}
