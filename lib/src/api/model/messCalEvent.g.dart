// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messCalEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessCalEvent _$MessCalEventFromJson(Map<String, dynamic> json) => MessCalEvent(
      eid: json['id'] as String?,
      title: json['title'] as String?,
      dateTime: json['datetime'] as String?,
      hostel: json['hostel'] as int?,
    );

Map<String, dynamic> _$MessCalEventToJson(MessCalEvent instance) =>
    <String, dynamic>{
      'id': instance.eid,
      'title': instance.title,
      'datetime': instance.dateTime,
      'hostel': instance.hostel,
    };
