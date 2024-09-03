import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const Gap(16),
        // const SimilarbooksListView(),
      ],
    );
  }
}
