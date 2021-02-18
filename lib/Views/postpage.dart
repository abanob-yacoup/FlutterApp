import 'package:DemoDay3/Views/imagepage.dart';
import 'package:DemoDay3/models/post.dart';
import 'package:DemoDay3/services/PostsService.dart';
import 'package:flutter/material.dart';

import 'package:DemoDay3/Views/postSample.dart';

class MyPostPage extends StatefulWidget {
  @override
  _MyPostPageState createState() => _MyPostPageState();
}

class _MyPostPageState extends State<MyPostPage> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostFromServer();
  }

  getPostFromServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "News Feed",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ImagePage(post: postList[index])),
                    );
                  },
                  child: MyPost(
                    text: postList[index].title,
                  ));
            }));
  }
}
