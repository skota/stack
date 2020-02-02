import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter stack demo'),
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
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              width: 350,
              height: 350,
              child: Image.asset('images/kitty.jpg'),
            ),
            Positioned(
              //80 px from right
              right: 80,
              //80 px up from bototm
              bottom: 80,
              child: Text(
                "hello kitty",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            //non posiioned
            Container(
              color: Colors.lightGreen[300],
              child: Text(
                "I am not positioned",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
