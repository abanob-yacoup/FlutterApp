import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyPost extends StatefulWidget {
  String text;
  MyPost({this.text});
  @override
  _MyPostState createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Text("User Name", style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(widget.text),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Image.network('https://picsum.photos/400/300'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.thumb_up), Text(" Like")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.comment), Text(" Comment")],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
