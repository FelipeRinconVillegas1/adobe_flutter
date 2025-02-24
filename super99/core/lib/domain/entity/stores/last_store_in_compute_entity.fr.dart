import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_store_in_compute_entity.fr.freezed.dart';
part 'last_store_in_compute_entity.fr.g.dart';

///Esta entidad es utilizada para persistir desde que bodega se estan obteniendo los productos para
///que fueron validados por OMS para el Envio a Domicilio de los productos, solo se usa para envio a domicilio
///ya que retiro en tienda los productos salen de la tienda seleccionada por el cliente
@freezed
class LastStoreInComputeEntity with _$LastStoreInComputeEntity {
  const factory LastStoreInComputeEntity({
    required String code,
    required String name,
  }) = _LastStoreInComputeEntity;

  factory LastStoreInComputeEntity.fromJson(Map<String, Object?> json) => _$LastStoreInComputeEntityFromJson(json);
}
