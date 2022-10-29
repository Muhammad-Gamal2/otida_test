import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otida_test/posts/posts.dart';
import 'package:otida_test/posts/views/posts_form.dart';
import 'package:post_repository/post_repository.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsCubit>(
      create: (context) =>
          PostsCubit(postRepository: context.read<PostRepository>())
            ..getPosts(),
      child: const PostsForm(),
    );
  }
}
