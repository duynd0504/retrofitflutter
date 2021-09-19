import 'package:flutter/material.dart';
import 'package:flutter_application_basic/network/api_service.dart';
import 'package:flutter_application_basic/ui/home_view_model.dart';
import 'package:flutter_application_basic/ui/my_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) {
          return MainViewModel();
        },
        child: MyHome(),
      ),
    );
  }
}
