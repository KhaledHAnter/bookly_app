import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) {
            return const Center(
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            );
          },
          placeholder: (context, url) {
            return Center(
              child: LoadingAnimationWidget.discreteCircle(
                  color: Colors.white, size: 50),
            );
          },
        ),
      ),
    );
  }
}
