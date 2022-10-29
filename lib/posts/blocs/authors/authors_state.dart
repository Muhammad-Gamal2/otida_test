part of 'authors_cubit.dart';

abstract class AuthorsState extends Equatable {
  const AuthorsState();
}

class AuthorsInitial extends AuthorsState {
  @override
  List<Object> get props => [];
}

class AuthorsLoading extends AuthorsState {
  @override
  List<Object> get props => [];
}

class AuthorsLoaded extends AuthorsState {
  final List<Author> authors;

  const AuthorsLoaded(this.authors);

  @override
  List<Object> get props => [authors];
}

class AuthorsError extends AuthorsState {
  final CustomException exception;

  const AuthorsError(this.exception);

  @override
  List<Object> get props => [exception];
}
