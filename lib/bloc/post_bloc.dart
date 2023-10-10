import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/model/post.dart';

class PostEvent {}

abstract class PostState {}

//Kelas ketika pertama kali memmanggil
class PostUnitialized extends PostState {}

//Kelas ketika datanya sudah ada jadi tinggal load data baru atau data selanjutnya
class PostLoaded extends PostState {
  List<Post> posts;
  bool hasReachedMax;

  PostLoaded({required this.posts, required this.hasReachedMax});

  PostLoaded copyWith({List<Post>? posts, bool? hasReachedMax}) {
    return PostLoaded(
      //Kalau dia ada posts maka direturn posts parameter jika tidak maka akan direturn sih post yang di constructor
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(PostState initialState) : super(PostUnitialized());

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    List<Post> posts;

    if (state is PostUnitialized) {
      posts = await Post.connectToApi(0, 10);
      yield PostLoaded(posts: posts, hasReachedMax: false);
    } else {
      PostLoaded postLoaded = state as PostLoaded;
      posts = await Post.connectToApi(postLoaded.posts.length, 10);

      yield (posts.isEmpty)
          ? postLoaded.copyWith(hasReachedMax: false)
          : PostLoaded(posts: postLoaded.posts + posts, hasReachedMax: true);
    }
  }
}
