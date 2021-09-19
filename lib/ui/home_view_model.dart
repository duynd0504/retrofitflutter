import 'package:flutter/widgets.dart';
import 'package:flutter_application_basic/network/api_service.dart';
import 'package:flutter_application_basic/network/dio_helper.dart';
import 'package:flutter_application_basic/network/model/task_model.dart';

class MainViewModel extends ChangeNotifier {
  ApiService apiClient = ApiService(DioHelper.dioObject!);
  List<TaskModel> items = [];

  getData() {
    apiClient.getTasks().then((it) {
      items.addAll(it);
      notifyListeners();
    }).catchError((onError) {
      print(onError.toString());
    });
  }
}
