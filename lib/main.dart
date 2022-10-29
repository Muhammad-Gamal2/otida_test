import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otida_test/posts/posts.dart';
import 'package:post_repository/post_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<PostRepository>(
      create: (context) => PostRepository(),
      child: MaterialApp(
        title: 'Otida Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PostsPage(),
      ),
    );
  }
}
