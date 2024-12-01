part of 'feature_books_cubit.dart';

abstract class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBooksLoading extends FeatureBooksState {}

class FeatureBooksFailure extends FeatureBooksState {
  final String errorMessage;

  const FeatureBooksFailure({required this.errorMessage});
}

class FeatureBooksSucesss extends FeatureBooksState {
  final List<BookModel> booksList;

const  FeatureBooksSucesss({required this.booksList});
}
