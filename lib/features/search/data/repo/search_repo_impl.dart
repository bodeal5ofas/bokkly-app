import 'package:bokkly_app/core/errors/failure.dart';
import 'package:bokkly_app/core/utils/api_service.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  ApiService apiService;
  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook(
      {required String searchTitle}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=$searchTitle');
      List<BookModel> booksList = [];
      for (var iteam in data["items"]) {
        booksList.add(BookModel.fromJson(iteam));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
       return left(ServerFailure.fromDioException(e));
      } else {
       return left(ServerFailure(errorMessage: 'Opps there is an error'));
      }
    }
  }
}
