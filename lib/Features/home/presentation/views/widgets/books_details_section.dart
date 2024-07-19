import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: FeaturedListViewItem(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const Gap(43),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const Gap(6),
        Opacity(
          opacity: 0.8,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const Gap(15),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const Gap(37),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
