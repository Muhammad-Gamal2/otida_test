import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:network_service/network_service.dart';
import 'package:post_repository/post_repository.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit({required PostRepository postRepository})
      : _postRepository = postRepository,
        super(PostsInitial());

  final PostRepository _postRepository;

  Future<void> getPosts() async {
    emit(PostsLoading());
    try {
      final result = await Future.wait([
        _postRepository.getPosts(),
        _postRepository.getAuthors(),
      ]);
      final posts = result[0] as List<Post>;
      final authors = result[1] as List<Author>;

      var postsWithAuthorName = posts
          .map(
            (post) => post.copyWith(
                userName: authors
                    .firstWhere((element) => element.id == post.userId)
                    .name),
          )
          .toList();

      emit(PostsLoaded(postsWithAuthorName));
    } on CustomException catch (e) {
      emit(PostsError(e));
    } catch (e) {
      emit(PostsError(CustomException(
          message: e.toString(), errorType: Errors.builtInException)));
    }
  }
}
