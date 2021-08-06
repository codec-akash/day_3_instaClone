import 'package:flutter/material.dart';

class ApiResponse extends StatelessWidget {
  final String title;
  final String description;
  final int id;
  const ApiResponse(
      {Key? key,
      required this.title,
      required this.description,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("id :"),
              Text("$id"),
            ],
          ),
          Row(
            children: [
              Text("title :"),
              Flexible(child: Text(title)),
            ],
          ),
          Row(
            children: [
              Text("Description :"),
              Flexible(child: Text(description)),
            ],
          ),
        ],
      ),
    );
  }
}
