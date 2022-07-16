import 'screens/call_me_maybe.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home:  CallMeMaybe(title: 'Call Me Maybe'),
    );
  }
}