import 'package:flutter/material.dart';
import '../widget/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Row(
                children: [
                  Expanded(child: Text("Instagram")),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Post(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home)
                ],
              ),
            ),
            // showText(),
          ],
        ),
      ),
    );
  }
}
