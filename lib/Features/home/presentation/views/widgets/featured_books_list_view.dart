import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Core/widgets/cutom_error_widget.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBookDetailsView,
                            extra: state.books[index]);
                      },
                      child: FeaturedListViewItem(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (state is FeaturedBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
