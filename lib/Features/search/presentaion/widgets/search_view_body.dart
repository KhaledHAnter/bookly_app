import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/search/presentaion/widgets/custom_search_text_feild.dart';
import 'package:bookly_app/Features/search/presentaion/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomSearchTextField(),
          Gap(25),
          Text("Results", style: Styles.textStyle18),
          Gap(25),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
