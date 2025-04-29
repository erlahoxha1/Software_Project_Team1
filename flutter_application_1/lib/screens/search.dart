import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key}); // ✅ using super parameter

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: const Center(
        child: Text('This is the Search Page'),
      ),
    );
  }
}
