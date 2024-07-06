import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const Gap(6),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const Gap(3),
        Text(
          "(264)",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
