import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_design/models/newsModel.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  List<NewsModel> newsItems = [];
  Future<List<NewsModel>> getNewsArticles() async {
    List<NewsModel> newsList = [];
    var NewApiUrl =
        Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=');

    var ApiResponse = await http.get(NewApiUrl);
    if (ApiResponse.statusCode == 200) {
      var res = jsonDecode(ApiResponse.body);
      var articles = res["articles"];

      for (var article in articles) {
        var title = article["title"];
        var source = article["source"]["name"];
        newsList.add(new NewsModel(title: title, source: source));
        print(title);
      }
    }
    return newsList;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewsArticles().then((value) => null);
    print("State initilized");
  }

  @override
  Widget build(BuildContext context) {
    print("Build called");
    return Scaffold(
      appBar: AppBar(
        title: Text("NEWS APP"),
      ),
    );
  }
}
