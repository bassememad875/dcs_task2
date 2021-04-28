import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC Task 2',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget blockOfWidgets(
      String text, double _width, Color _color, Color _color2, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: _width,
              height: _width,
              color: _color,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text + ' $index',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: _width,
              height: _width,
              color: _color2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text + ' ' + (++index).toString(),
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.person),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          blockOfWidgets('Container ', 150, Colors.blueAccent, Colors.white, 1),
          blockOfWidgets('Container ', 150, Colors.redAccent, Colors.amber, 3),
          blockOfWidgets(
              'Container ', 150, Colors.greenAccent, Colors.yellowAccent, 5),
        ],
      ),
    );
  }
}
