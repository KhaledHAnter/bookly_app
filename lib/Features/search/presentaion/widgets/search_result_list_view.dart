import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          // child: BestSellerListViewItem(),
          child: Text("data"),
        );
      },
    );
  }
}
