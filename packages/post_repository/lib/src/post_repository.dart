import 'package:network_service/network_service.dart';

import 'models/models.dart';

class PostRepository {
  PostRepository({NetworkService? networkService})
      : _networkService = networkService ?? NetworkService();

  final NetworkService _networkService;

  /// list all of the posts.
  Future<List<Post>> getPosts() async {
    const postsRequest = '/posts';

    final response = await _networkService.get(postsRequest);

    if (response.statusCode != 200) {
      handleErrorsMsg(response);
    }

    return List<Post>.from(
      response.data.map(
        (post) => Post.fromJson(post),
      ),
    );
  }

  /// list all of the authors.
  Future<List<Author>> getAuthors() async {
    const authorsRequest = '/users';

    final response = await _networkService.get(authorsRequest);

    if (response.statusCode != 200) {
      handleErrorsMsg(response);
    }

    return List<Author>.from(
      response.data.map(
        (author) => Author.fromJson(author),
      ),
    );
  }
}
