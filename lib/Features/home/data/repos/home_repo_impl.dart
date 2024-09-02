// import 'package:bookly_app/Core/errors/failuars.dart';
// import 'package:bookly_app/Core/utils/api_service.dart';
// import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
// import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';

// class HomeRepoImpl implements HomeRepo {
//   final ApiService apiService;

//   HomeRepoImpl(this.apiService);
//   @override
//   Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
//     try {
//       var data = await apiService.get(
//           endPoint: "?Filtering=free-ebooks&Sorting=newest&q=subject:medicine");
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         books.add(BookModel.fromJson(item));
//       }
//       return right(books);
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
//     try {
//       var data = await apiService.get(
//           endPoint: "?Filtering=free-ebooks&q=subject:Programming");
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         books.add(BookModel.fromJson(item));
//       }
//       return right(books);
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
//       {required String category}) async {
//     try {
//       var data = await apiService.get(
//           endPoint:
//               "?Filtering=free-ebooks&Sorting=relevance&q=subject:$category");
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         books.add(BookModel.fromJson(item));
//       }
//       return right(books);
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }

import 'package:bookly_app/Core/errors/failuars.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
