import 'package:bloc/bloc.dart';
import 'package:bokkly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepoImpl) : super(SearchInitial());
  SearchRepoImpl searchRepoImpl;
  Future<void> fetchSearchedBook({required String searchTitle}) async {
    emit(SearchLoading());
    var result =
        await searchRepoImpl.fetchSearchedBook(searchTitle: searchTitle);
    result.fold(
      (error) {
        emit(SearchFailure(errMessage: error.errorMessage));
      },
      (books) {
        emit(SearchSuccess(booksList: books));
      },
    );
  }
}
