import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instaclone/model/response_model.dart';
import 'package:instaclone/screen/new_api_call.dart';
import 'package:instaclone/widget/post.dart';

class ApiHome extends StatefulWidget {
  const ApiHome({Key? key}) : super(key: key);

  @override
  _ApiHomeState createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  var globalResponse;
  late List<ResponseModel> responseData;
  void apiCall() async {
    var apiCalls = http.Client();
    var response = await apiCalls
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    globalResponse = json.decode(response.body);
    responseData =
        (globalResponse as List).map((e) => ResponseModel.fromJson(e)).toList();
    setState(() {});
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Home"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              apiCall();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                "Click here",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewApiCall()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                "Load New Api",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          globalResponse != null
              ? Expanded(
                  child: ListView.builder(
                    itemCount: responseData.length,
                    itemBuilder: (context, index) => ApiResponse(
                      id: responseData[index].id,
                      title: responseData[index].title,
                      description: responseData[index].body,
                    ),
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
