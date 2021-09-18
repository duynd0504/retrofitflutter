import 'package:flutter/material.dart';
import 'package:flutter_application_basic/network/api_service.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test API'),
      ),
      body: Container(
        child: Center(
          child: Text('API TESTING'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final api = Provider.of<ApiService>(context, listen: false);
          api.getTasks().then((it) {
            it.forEach((element) {
              print(element.title);
            });
          }).catchError((onError) {
            print(onError.toString());
          });
        },
        child: Icon(Icons.terrain),
      ),
    );
  }
}
