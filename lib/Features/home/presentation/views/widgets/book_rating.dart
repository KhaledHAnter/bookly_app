import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const Gap(6),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const Gap(3),
        Text(
          "(264)",
          style: Styles.textStyle14.copyWith(
              color: Colors.white.withOpacity(.5), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
