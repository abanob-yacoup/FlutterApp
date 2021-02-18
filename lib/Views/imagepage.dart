import 'package:DemoDay3/models/post.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImagePage extends StatefulWidget {
  Post post;
  // final body;
  ImagePage({this.post});
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Details"),
      ),
      body: Container(
          child: Column(
        children: [
          Image.network('https://picsum.photos/400/300'),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(widget.post.body),
          ),
        ],
      )),
    );
  }
}
