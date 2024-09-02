// import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
// import 'package:bookly_app/Core/widgets/cutom_error_widget.dart';
// import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
// import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SimilarbooksListView extends StatelessWidget {
//   const SimilarbooksListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
//       builder: (context, state) {
//         if (state is SimilarBooksSuccess) {
//           return SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//             child: ListView.builder(
//               itemCount: state.books.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: FeaturedListViewItem(
//                     imageUrl:
//                         state.books[index].volumeInfo.imageLinks.thumbnail,
//                   ),
//                 );
//               },
//             ),
//           );
//         } else if (state is SimilarBooksFailure) {
//           return CustomErrorWidget(errMessage: state.errMessage);
//         } else {
//           return const CustomLoadingIndicator();
//         }
//       },
//     );
//   }
// }
