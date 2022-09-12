import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text("Goals"),
                Text("..."),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              onDoubleTap: () {
                print("Salomalaykum");
              },
              child: Container(
                width: isClicked ? 150 : double.infinity,
                height: 80,
                color: isClicked ? Colors.red : Colors.black,
              ),
            ),
            Container(
              width: 150,
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              width: 150,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 150,
              height: 80,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
