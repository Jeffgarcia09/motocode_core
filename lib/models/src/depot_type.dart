import 'package:freezed_annotation/freezed_annotation.dart';

part 'depot_type.freezed.dart';
part 'depot_type.g.dart';

@freezed
class DepotType with _$DepotType {
  const DepotType._();

  const factory DepotType({
    int? id,
    String? name,
    String? description,
    DateTime? createdDate,
  }) = _DepotType;

  factory DepotType.fromJson(Map<String, dynamic> json) =>
      _$DepotTypeFromJson(json);

  Map<String, dynamic> mapToRequest() => {
        'id': id,
        'name': name,
        'description': description,
        'createdDate': createdDate?.toUtc().toIso8601String(),
      };
}
