import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';
@JsonSerializable()
class TaskModel {
  late int albumId;
  late int id;
  late String title;
  late String url;
  late String thumbnailUrl;

  TaskModel(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
