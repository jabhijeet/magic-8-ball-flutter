import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ask a question and press the magic ball',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0),
            ),
            SizedBox.fromSize(
              child: Divider(
                height: 10,
                color: Colors.white,
              ),
              size: Size(400.0, 50.0),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$ballNum.png'),
                onPressed: () {
                  setState(() {
                    ballNum = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
