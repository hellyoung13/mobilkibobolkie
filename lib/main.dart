import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

var one = 1;
var two = 1;
void random() {
  Random random = new Random();
  one = random.nextInt(5) + 1;
  two = random.nextInt(5) + 1;
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Игральные кости'),
            backgroundColor: Colors.orange,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(25)),
                IconButton(
                  icon: Image.asset('images/${one}.jpg'),
                  iconSize: 170,
                  onPressed: () {
                    setState(() {
                      random();
                    });
                  },
                ),
                Padding(padding: EdgeInsets.all(25)),
                IconButton(
                  icon: Image.asset('images/${two}.jpg'),
                  iconSize: 170,
                  onPressed: () {
                    setState(() {
                      random();
                    });
                  },
                )
              ],
            ),
          )),
    );
  }
}
