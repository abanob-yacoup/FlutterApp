import 'package:DemoDay3/models/post.dart';
import 'package:dio/dio.dart';

class PostService {
  String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    List<Post> posts = new List();
    Response resopnse;
    Dio dio = new Dio();
    resopnse = await dio.get(url);
    var data = resopnse.data;
    // print(data);
    data.forEach((value) {
      posts.add(Post.fromJson(value));
    });
    return posts;
  }
}
