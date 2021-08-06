import 'package:flutter/material.dart';
import 'package:instaclone/model/kunal_ki_api.dart';

class Blog extends StatelessWidget {
  final Result resultModel;
  const Blog({Key? key, required this.resultModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            child: Text("${resultModel.blogTitle}"),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(resultModel.blogImg),
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("${DateTime.parse(resultModel.createdAt)}"),
                SizedBox(width: 20.0),
                Column(
                  children: [
                    Icon(Icons.favorite_border),
                    Text("${resultModel.likes}"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
