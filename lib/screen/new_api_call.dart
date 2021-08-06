import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instaclone/model/kunal_ki_api.dart';
import 'package:instaclone/widget/blog.dart';

class NewApiCall extends StatefulWidget {
  const NewApiCall({Key? key}) : super(key: key);

  @override
  _NewApiCallState createState() => _NewApiCallState();
}

class _NewApiCallState extends State<NewApiCall> {
  late NewApi apiCall;
  var decodedResult;

  void callApi() async {
    var response = http.Client();
    var result = await response.get(
        Uri.parse("https://rccblog.raviprakashdev.com/blogs/showFeatured"));
    decodedResult = json.decode(result.body);
    apiCall = NewApi.fromJson(decodedResult);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kunal Ki api"),
      ),
      body: Column(children: [
        decodedResult != null
            ? Expanded(
                child: ListView.builder(
                  itemCount: apiCall.result.length,
                  itemBuilder: (context, index) => Blog(
                    resultModel: apiCall.result[index],
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator())
      ]),
    );
  }
}
