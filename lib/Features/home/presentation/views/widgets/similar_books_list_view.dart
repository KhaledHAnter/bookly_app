import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarbooksListView extends StatelessWidget {
  const SimilarbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
