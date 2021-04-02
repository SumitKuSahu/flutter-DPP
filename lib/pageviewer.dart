import 'package:flutter/material.dart';
import 'package:myntra_test/CategoryPage.dart';
import 'package:myntra_test/global.dart';

class PageViewer extends StatefulWidget {
  @override
  _PageViewerState createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: PageView(
  children: [
    Global(),
    CategoryPage()
  ],
),
    );
  }
}
