import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: const FeaturedListViewItem(),
        ),
        const Gap(43),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const Gap(6),
        Opacity(
          opacity: 0.8,
          child: Text("Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const Gap(15),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const Gap(37),
        const BooksAction(),
      ],
    );
  }
}
