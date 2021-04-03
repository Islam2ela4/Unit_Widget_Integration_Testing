import 'package:flutter/material.dart';
import 'package:testing/form_to_test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: Form_(),
    );
  }
}
