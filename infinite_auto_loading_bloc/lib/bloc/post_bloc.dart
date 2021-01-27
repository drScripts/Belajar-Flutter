import 'package:bloc/bloc.dart';
import 'package:infinite_auto_loading_bloc/model/post.dart';

class PostEvent {}

abstract class PostState {}

class PostUninitialized extends PostState {}

class PostLoading extends PostState {
  List<Post> posts;
  bool hasReachMax;

  PostLoading({this.posts, this.hasReachMax});
  PostLoading copyWith({List<Post> posts, bool hasReachMax}) {
    return PostLoading(
        posts: posts ?? this.posts,
        hasReachMax: hasReachMax ?? this.hasReachMax);
  }
}

class PostBloc extends Bloc<PostEvent, PostState> {
  @override
  PostState get initialState => PostUninitialized();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    List<Post> posts;
    if (state is PostUninitialized) {
      posts = await Post.connectApi(start: 0, limit: 10);
      yield PostLoading(posts: posts, hasReachMax: false);
    } else {
      PostLoading postss = state as PostLoading;
      posts = await Post.connectApi(start: postss.posts.length, limit: 10);
      yield (posts.isEmpty)
          ? postss.copyWith(hasReachMax: true)
          : PostLoading(posts: postss.posts + posts, hasReachMax: false);
    }
  }
}
