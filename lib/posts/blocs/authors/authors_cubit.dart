import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:network_service/network_service.dart';
import 'package:post_repository/post_repository.dart';

part 'authors_state.dart';

class AuthorsCubit extends Cubit<AuthorsState> {
  AuthorsCubit({required PostRepository postRepository})
      : _postRepository = postRepository,
        super(AuthorsInitial());

  final PostRepository _postRepository;

  Future<void> getAuthors() async {
    emit(AuthorsLoading());
    try {
      final authors = await _postRepository.getAuthors();
      emit(AuthorsLoaded(authors));
    } on CustomException catch (e) {
      emit(AuthorsError(e));
    } catch (e) {
      emit(AuthorsError(CustomException(
          message: e.toString(), errorType: Errors.builtInException)));
    }
  }
}
