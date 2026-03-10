// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_concrete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoConcreteModel _$TodoConcreteModelFromJson(Map<String, dynamic> json) =>
    TodoConcreteModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      isDone: json['isDone'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$TodoConcreteModelToJson(TodoConcreteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isDone': instance.isDone,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
