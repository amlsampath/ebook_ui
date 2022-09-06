import 'package:ebook_app_ui/ui/home.dart';
import 'package:ebook_app_ui/ui/reusable_widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Graphik',
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
