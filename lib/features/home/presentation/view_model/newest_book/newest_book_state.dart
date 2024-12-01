part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookFailure extends NewestBookState {
  final String errorMessage;

  const NewestBookFailure({required this.errorMessage});
}

class NewestBookSuceess extends NewestBookState {
  final List<BookModel> booksList;

const  NewestBookSuceess({required this.booksList});
}
