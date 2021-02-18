import 'package:flutter/material.dart';
import 'package:DemoDay3/Views/postpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sign In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Card(
        margin: const EdgeInsets.all(25),
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(15.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPostPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                    child:
                        const Text('Sign In', style: TextStyle(fontSize: 20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Need an account? Register"),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("forget Password")],
              ),
            )
          ],
        )),
      ),
    );
  }
}
