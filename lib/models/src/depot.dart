import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motocode_core/models/src/business_unit.dart';
import 'package:motocode_core/models/src/depot_type.dart';

part 'depot.freezed.dart';
part 'depot.g.dart';

@freezed
class Depot with _$Depot {
  const Depot._();

  const factory Depot({
    int? id,
    String? name,
    String? location,
    double? latitude,
    double? longitude,
    int? businessUnitId,
    int? depotTypeId,
    BusinessUnit? businessUnit,
    DepotType? depotType,
  }) = _Depot;

  factory Depot.fromJson(Map<String, dynamic> json) => _$DepotFromJson(json);

  Map<String, dynamic> mapToRequest() => {
        'id': id,
        'name': name,
        'location': location,
        'latitude': latitude,
        'longitude': longitude,
        'businessUnitId': businessUnitId ?? businessUnit?.id,
        'depotTypeId': depotTypeId ?? depotType?.id,
      };
}
