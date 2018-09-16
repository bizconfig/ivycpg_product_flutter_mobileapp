import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: mq.viewInsets.bottom),
      child: new Material(
        child: new ListView(
          children: <Widget>[
//          new Header(),
            Text('${mq.viewInsets.bottom}'),
            new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(top: 40.0),
                  ),
                  new Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 30.0),
                    child: new Column(
                      children: <Widget>[
                        textComponent(1),
                        textComponent(2),
                        textComponent(3),
                      ],
                    ),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: new Container(
                color: Colors.blueGrey,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 30.0),
                      child: new Column(
                        children: <Widget>[
                          textComponent(1),
                          textComponent(2),
                          textComponent(3),
                        ],
                      ),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(top: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textComponent(int num) {
    return new Row(
      children: <Widget>[
        new Container(
          child: new Text('$num. ', textScaleFactor: 1.0),
          padding: EdgeInsets.only(right: 3.0),
        ),
        new Expanded(
          child: new TextField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            autofocus: true,
          ),
        ),
      ],
    );
  }
}