import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.red,
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage1),
              // fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
