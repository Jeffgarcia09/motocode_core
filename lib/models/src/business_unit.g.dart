// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessUnitImpl _$$BusinessUnitImplFromJson(Map<String, dynamic> json) =>
    _$BusinessUnitImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$BusinessUnitImplToJson(_$BusinessUnitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
