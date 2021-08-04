import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.account_box),
                SizedBox(width: 10.0),
                Expanded(child: Text("Crickash")),
                Icon(Icons.menu),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/insta_post.jpg",
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(width: 8.0),
                      Icon(Icons.comment),
                      SizedBox(width: 8.0),
                      Icon(Icons.send),
                    ],
                  ),
                ),
                Icon(Icons.save_alt_outlined),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.account_circle_outlined),
                        Container(
                          child: Icon(Icons.account_circle_outlined),
                        ),
                        Icon(Icons.account_circle_outlined),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: RichText(
                      text: TextSpan(
                          text: "Liked By",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: " Akash",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "November, 12",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          SizedBox(height: 30.0),
          Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}
