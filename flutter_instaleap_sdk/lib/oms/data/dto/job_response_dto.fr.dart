import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_response_dto.fr.freezed.dart';
part 'job_response_dto.fr.g.dart';

/// Clase principal que representa la respuesta del endpoint.
@freezed
class JobResponseDTO with _$JobResponseDTO {
  /// Crea una instancia de [JobResponseDTO].
  const factory JobResponseDTO({
    /// Número único de trabajo.
    @JsonKey(name: 'job_number') required String jobNumber,

    /// Identificador del cliente.
    @JsonKey(name: 'client_id') required String clientId,

    /// Fecha y hora de inicio del trabajo.
    @JsonKey(name: 'start_time') required DateTime startTime,

    /// Fecha y hora de finalización del trabajo.
    @JsonKey(name: 'end_time') required DateTime endTime,

    /// Estado actual del trabajo.
    required String state,

    /// Información de la dirección de origen.
    required AddressDTO origin,

    /// Información de la dirección de destino.
    required AddressDTO destination,

    /// Número total de ítems.
    @JsonKey(name: 'total_items') required int totalItemDTOs,

    /// Número de ítems reemplazados.
    @JsonKey(name: 'items_replaced') required int itemsReplaced,

    /// Información del costo de productos.
    @JsonKey(name: 'products_cost') required MoneyDTO productsCost,

    /// Lista de ítems.
    required List<ItemDTO> items,

    /// Información sobre el método de recolección y pago.
    @JsonKey(name: 'collect_with') required CollectWithDTO collectWith,

    /// Datos del destinatario.
    required RecipientDTO recipient,

    /// Detalles de las tareas.
    required TasksDTO tasks,

    /// Indica si se puede procesar el checkout.
    @JsonKey(name: 'can_process_checkout') required bool canProcessCheckout,

    /// Opciones de entrega.
    @Default([]) @JsonKey(name: 'delivery_options') List<dynamic> deliveryOptions,

    /// Comentario del trabajo.
    @JsonKey(name: 'job_comment') required String jobComment,

    /// Datos externos (webhook y backoffice).
    @JsonKey(name: 'external_data') required ExternalDataDTO externalData,
  }) = _JobResponseDTO;

  /// Crea una instancia de [JobResponseDTO] a partir de un JSON.
  factory JobResponseDTO.fromJson(Map<String, dynamic> json) => _$JobResponseDTOFromJson(json);
}

/// Representa una dirección (origen o destino).
@freezed
class AddressDTO with _$AddressDTO {
  /// Crea una instancia de [AddressDTO].
  const factory AddressDTO({
    /// Nombre de la ubicación.
    required String name,

    /// Dirección principal.
    required String address,

    /// Dirección secundaria.
    @JsonKey(name: 'address_two') required String addressTwo,

    /// País.
    required String country,

    /// Estado o región.
    required String state,

    /// Ciudad.
    required String city,

    /// Código postal.
    @JsonKey(name: 'zip_code') required String zipCode,

    /// Descripción de la dirección.
    required String description,

    /// Coordenadas geográficas.
    required CoordinatesDTO coordinates,
  }) = _AddressDTO;

  /// Crea una instancia de [AddressDTO] a partir de un JSON.
  factory AddressDTO.fromJson(Map<String, dynamic> json) => _$AddressDTOFromJson(json);
}

/// Representa las coordenadas geográficas.
@freezed
class CoordinatesDTO with _$CoordinatesDTO {
  /// Crea una instancia de [CoordinatesDTO].
  const factory CoordinatesDTO({
    /// Latitud.
    required double lat,

    /// Longitud.
    required double lng,
  }) = _CoordinatesDTO;

  /// Crea una instancia de [CoordinatesDTO] a partir de un JSON.
  factory CoordinatesDTO.fromJson(Map<String, dynamic> json) => _$CoordinatesDTOFromJson(json);
}

/// Representa el costo de productos.
@freezed
class MoneyDTO with _$MoneyDTO {
  /// Crea una instancia de [MoneyDTO].
  const factory MoneyDTO({
    /// Valor monetario.
    required num amount,

    /// Código de moneda.
    @JsonKey(name: 'currency_code') required String currencyCode,
  }) = _MoneyDTO;

  /// Crea una instancia de [MoneyDTO] a partir de un JSON.
  factory MoneyDTO.fromJson(Map<String, dynamic> json) => _$MoneyDTOFromJson(json);
}

/// Representa un ítem dentro del trabajo.
@freezed
class ItemDTO with _$ItemDTO {
  /// Crea una instancia de [ItemDTO].
  const factory ItemDTO({
    /// Identificador único del ítem.
    required String id,

    /// Estado del ítem.
    required String state,

    /// Nombre del ítem.
    required String name,

    /// Identificador del paquete.
    @JsonKey(name: 'package_id') required String packageId,

    /// Cantidad del ítem.
    required int quantity,

    /// Cantidad encontrada.
    @JsonKey(name: 'found_quantity') required int foundQuantity,

    /// URL de la imagen del ítem.
    @JsonKey(name: 'photo_url') required String photoUrl,

    /// Detalles de la presentación.
    required PresentationDTO presentation,

    /// Atributos adicionales.
    required AttributesDTO attributes,

    /// Origen del ítem.
    required String origin,

    /// Comentario del ítem.
    required String comment,

    /// Indica si es un ítem sustituto.
    @JsonKey(name: 'is_substitute') required bool isSubstitute,

    /// Identificador del ítem que lo reemplaza.
    @JsonKey(name: 'replaced_by') required String replacedBy,
  }) = _ItemDTO;

  /// Crea una instancia de [ItemDTO] a partir de un JSON.
  factory ItemDTO.fromJson(Map<String, dynamic> json) => _$ItemDTOFromJson(json);
}

/// Representa los detalles de presentación de un ítem.
@freezed
class PresentationDTO with _$PresentationDTO {
  /// Crea una instancia de [PresentationDTO].
  const factory PresentationDTO({
    /// Cantidad presentada.
    required int quantity,

    /// Unidad de medida.
    required String unit,

    /// Nombre de la presentación.
    required String name,

    /// Precio de la presentación.
    required PriceDTO price,

    /// Peso del ítem.
    required num weight,

    /// Lista de dimensiones.
    required List<DimensionDTO> dimensions,
  }) = _PresentationDTO;

  /// Crea una instancia de [PresentationDTO] a partir de un JSON.
  factory PresentationDTO.fromJson(Map<String, dynamic> json) => _$PresentationDTOFromJson(json);
}

/// Representa el precio de un ítem o presentación.
@freezed
class PriceDTO with _$PriceDTO {
  /// Crea una instancia de [PriceDTO].
  const factory PriceDTO({
    /// Valor monetario.
    required num amount,

    /// Código de moneda.
    @JsonKey(name: 'currency_code') required String currencyCode,
  }) = _PriceDTO;

  /// Crea una instancia de [PriceDTO] a partir de un JSON.
  factory PriceDTO.fromJson(Map<String, dynamic> json) => _$PriceDTOFromJson(json);
}

/// Representa las dimensiones de un ítem.
@freezed
class DimensionDTO with _$DimensionDTO {
  /// Crea una instancia de [DimensionDTO].
  const factory DimensionDTO({
    /// Longitud.
    required num length,

    /// Anchura.
    required num width,

    /// Altura.
    required num height,
  }) = _DimensionDTO;

  /// Crea una instancia de [DimensionDTO] a partir de un JSON.
  factory DimensionDTO.fromJson(Map<String, dynamic> json) => _$DimensionDTOFromJson(json);
}

/// Representa los atributos adicionales de un ítem.
@freezed
class AttributesDTO with _$AttributesDTO {
  /// Crea una instancia de [AttributesDTO].
  const factory AttributesDTO({
    /// Categoría del ítem.
    required String category,

    /// Otro atributo (clave en JSON: "another attributes").
    @JsonKey(name: 'another attributes') required String anotherAttributesDTO,
  }) = _AttributesDTO;

  /// Crea una instancia de [AttributesDTO] a partir de un JSON.
  factory AttributesDTO.fromJson(Map<String, dynamic> json) => _$AttributesDTOFromJson(json);
}

/// Representa la información del método de recolección y pago.
@freezed
class CollectWithDTO with _$CollectWithDTO {
  /// Crea una instancia de [CollectWithDTO].
  const factory CollectWithDTO({
    /// Método de recolección.
    required String method,

    /// Detalles del pago.
    required PaymentDTO payment,
  }) = _CollectWithDTO;

  /// Crea una instancia de [CollectWithDTO] a partir de un JSON.
  factory CollectWithDTO.fromJson(Map<String, dynamic> json) => _$CollectWithDTOFromJson(json);
}

/// Representa los detalles del pago en la recolección.
@freezed
class PaymentDTO with _$PaymentDTO {
  /// Crea una instancia de [PaymentDTO].
  const factory PaymentDTO({
    /// Valor monetario.
    required num amount,

    /// Moneda utilizada en el pago.
    required String currency,
  }) = _PaymentDTO;

  /// Crea una instancia de [PaymentDTO] a partir de un JSON.
  factory PaymentDTO.fromJson(Map<String, dynamic> json) => _$PaymentDTOFromJson(json);
}

/// Representa los datos del destinatario.
@freezed
class RecipientDTO with _$RecipientDTO {
  /// Crea una instancia de [RecipientDTO].
  const factory RecipientDTO({
    /// Nombre del destinatario.
    required String name,

    /// Correo electrónico.
    required String email,

    /// Número de teléfono.
    @JsonKey(name: 'phone_number') required int phoneNumber,
  }) = _RecipientDTO;

  /// Crea una instancia de [RecipientDTO] a partir de un JSON.
  factory RecipientDTO.fromJson(Map<String, dynamic> json) => _$RecipientDTOFromJson(json);
}

/// Representa la información relacionada con las tareas.
@freezed
class TasksDTO with _$TasksDTO {
  /// Crea una instancia de [TasksDTO].
  const factory TasksDTO({
    /// Identificador de la tarea.
    required String id,

    /// Tipo de tarea.
    required String type,

    /// Estado de la tarea.
    required String state,

    /// Recurso asociado.
    required String resource,

    /// Información del pago relacionado.
    required String payment,

    /// Lista de pasos de la tarea.
    required List<TaskStepDTO> steps,
  }) = _TasksDTO;

  /// Crea una instancia de [TasksDTO] a partir de un JSON.
  factory TasksDTO.fromJson(Map<String, dynamic> json) => _$TasksDTOFromJson(json);
}

/// Representa un paso dentro de una tarea.
@freezed
class TaskStepDTO with _$TaskStepDTO {
  /// Crea una instancia de [TaskStepDTO].
  const factory TaskStepDTO({
    /// Identificador del paso.
    required String id,

    /// Estado del paso.
    required String state,

    /// Tipo del paso.
    required String type,
  }) = _TaskStepDTO;

  /// Crea una instancia de [TaskStepDTO] a partir de un JSON.
  factory TaskStepDTO.fromJson(Map<String, dynamic> json) => _$TaskStepDTOFromJson(json);
}

/// Representa los datos externos (webhook y backoffice).
@freezed
class ExternalDataDTO with _$ExternalDataDTO {
  /// Crea una instancia de [ExternalDataDTO].
  const factory ExternalDataDTO({
    /// Datos del webhook.
    required ExternalKeyDTO webhook,

    /// Datos del backoffice.
    required ExternalKeyDTO backoffice,
  }) = _ExternalDataDTO;

  /// Crea una instancia de [ExternalDataDTO] a partir de un JSON.
  factory ExternalDataDTO.fromJson(Map<String, dynamic> json) => _$ExternalDataDTOFromJson(json);
}

/// Representa la clave externa (utilizada en webhook y backoffice).
@freezed
class ExternalKeyDTO with _$ExternalKeyDTO {
  /// Crea una instancia de [ExternalKeyDTO].
  const factory ExternalKeyDTO({
    /// Valor de la clave.
    required String key,
  }) = _ExternalKeyDTO;

  /// Crea una instancia de [ExternalKeyDTO] a partir de un JSON.
  factory ExternalKeyDTO.fromJson(Map<String, dynamic> json) => _$ExternalKeyDTOFromJson(json);
}
