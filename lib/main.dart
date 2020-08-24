import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_codes/listview.dart';
import 'package:sample_codes/signup.dart';
import 'package:sample_codes/validations/signup_validation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SignupValidation(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.blueAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListViewPage(),
      ),
    );
  }
}
