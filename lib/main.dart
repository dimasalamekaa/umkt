import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  // HttpOverrides.global = new MyHttpOverrides();
  runApp(MyUMKT());
}

class MyUMKT extends StatelessWidget {
  // const MyApp ({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My UMKT',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
