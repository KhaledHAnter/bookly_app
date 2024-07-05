import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomAppBar(),
        FeaturedBooksListView(),
        Gap(40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
