import 'package:flutter/material.dart';
import 'package:flutter_application_basic/ui/home_view_model.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Test API'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemCount: viewModel.items.length,
              itemBuilder: (_, index) {
            final item = viewModel.items[index];
            return Text(item.title);
          }),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.getData();
        },
        child: Icon(Icons.terrain),
      ),
    );
  }
}
