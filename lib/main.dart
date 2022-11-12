import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // hive initialize
  await Hive.initFlutter();

  // open hive box
  var box = await Hive.openBox('mybox');

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // navigation bar color
    statusBarColor: Colors.yellow, // status bar color
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
