import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_auto_loading_bloc/bloc/post_bloc.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Scroll'),
        backgroundColor: Colors.pink[100],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostUninitialized) {
              return Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              PostLoading postLoaded = state as PostLoading;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Text(postLoaded.posts[index].title);
                },
                itemCount: postLoaded.posts.length,
              );
            }
          },
        ),
      ),
    );
  }
}
