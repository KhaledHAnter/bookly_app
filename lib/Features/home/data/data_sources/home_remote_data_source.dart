import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Core/utils/save_data.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/constants.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: "?Filtering=free-ebooks&q=subject:Programming");

    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kFeaturedBooks);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "?Filtering=free-ebooks&Sorting=newest&q=subject:medicine");

    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBooks);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
