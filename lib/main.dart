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
      title: 'DSC Task 1',
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
  Widget blockOfWidgets(String text, double _width) {
    return Column(
      children: [
        SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Container(
          width: _width,
          height: 10,
          color: Colors.blueGrey[200],
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
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.person),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            color: Colors.brown[200],
          ),
          blockOfWidgets('Name:....', screenSize.width),
          blockOfWidgets('Age:....', screenSize.width),
          blockOfWidgets('Education:....', screenSize.width),
          SizedBox(
            height: 3,
          ),
          Text('Address:....',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
