// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_response_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JobResponseDTO _$JobResponseDTOFromJson(Map<String, dynamic> json) {
  return _JobResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$JobResponseDTO {
  /// Número único de trabajo.
  @JsonKey(name: 'job_number')
  String get jobNumber => throw _privateConstructorUsedError;

  /// Identificador del cliente.
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;

  /// Fecha y hora de inicio del trabajo.
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;

  /// Fecha y hora de finalización del trabajo.
  @JsonKey(name: 'end_time')
  DateTime get endTime => throw _privateConstructorUsedError;

  /// Estado actual del trabajo.
  String get state => throw _privateConstructorUsedError;

  /// Información de la dirección de origen.
  AddressDTO get origin => throw _privateConstructorUsedError;

  /// Información de la dirección de destino.
  AddressDTO get destination => throw _privateConstructorUsedError;

  /// Número total de ítems.
  @JsonKey(name: 'total_items')
  int get totalItemDTOs => throw _privateConstructorUsedError;

  /// Número de ítems reemplazados.
  @JsonKey(name: 'items_replaced')
  int get itemsReplaced => throw _privateConstructorUsedError;

  /// Información del costo de productos.
  @JsonKey(name: 'products_cost')
  MoneyDTO get productsCost => throw _privateConstructorUsedError;

  /// Lista de ítems.
  List<ItemDTO> get items => throw _privateConstructorUsedError;

  /// Información sobre el método de recolección y pago.
  @JsonKey(name: 'collect_with')
  CollectWithDTO get collectWith => throw _privateConstructorUsedError;

  /// Datos del destinatario.
  RecipientDTO get recipient => throw _privateConstructorUsedError;

  /// Detalles de las tareas.
  TasksDTO get tasks => throw _privateConstructorUsedError;

  /// Indica si se puede procesar el checkout.
  @JsonKey(name: 'can_process_checkout')
  bool get canProcessCheckout => throw _privateConstructorUsedError;

  /// Opciones de entrega.
  @JsonKey(name: 'delivery_options')
  List<dynamic> get deliveryOptions => throw _privateConstructorUsedError;

  /// Comentario del trabajo.
  @JsonKey(name: 'job_comment')
  String get jobComment => throw _privateConstructorUsedError;

  /// Datos externos (webhook y backoffice).
  @JsonKey(name: 'external_data')
  ExternalDataDTO get externalData => throw _privateConstructorUsedError;

  /// Serializes this JobResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobResponseDTOCopyWith<JobResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobResponseDTOCopyWith<$Res> {
  factory $JobResponseDTOCopyWith(
    JobResponseDTO value,
    $Res Function(JobResponseDTO) then,
  ) = _$JobResponseDTOCopyWithImpl<$Res, JobResponseDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'job_number') String jobNumber,
    @JsonKey(name: 'client_id') String clientId,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime endTime,
    String state,
    AddressDTO origin,
    AddressDTO destination,
    @JsonKey(name: 'total_items') int totalItemDTOs,
    @JsonKey(name: 'items_replaced') int itemsReplaced,
    @JsonKey(name: 'products_cost') MoneyDTO productsCost,
    List<ItemDTO> items,
    @JsonKey(name: 'collect_with') CollectWithDTO collectWith,
    RecipientDTO recipient,
    TasksDTO tasks,
    @JsonKey(name: 'can_process_checkout') bool canProcessCheckout,
    @JsonKey(name: 'delivery_options') List<dynamic> deliveryOptions,
    @JsonKey(name: 'job_comment') String jobComment,
    @JsonKey(name: 'external_data') ExternalDataDTO externalData,
  });

  $AddressDTOCopyWith<$Res> get origin;
  $AddressDTOCopyWith<$Res> get destination;
  $MoneyDTOCopyWith<$Res> get productsCost;
  $CollectWithDTOCopyWith<$Res> get collectWith;
  $RecipientDTOCopyWith<$Res> get recipient;
  $TasksDTOCopyWith<$Res> get tasks;
  $ExternalDataDTOCopyWith<$Res> get externalData;
}

/// @nodoc
class _$JobResponseDTOCopyWithImpl<$Res, $Val extends JobResponseDTO>
    implements $JobResponseDTOCopyWith<$Res> {
  _$JobResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobNumber = null,
    Object? clientId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? state = null,
    Object? origin = null,
    Object? destination = null,
    Object? totalItemDTOs = null,
    Object? itemsReplaced = null,
    Object? productsCost = null,
    Object? items = null,
    Object? collectWith = null,
    Object? recipient = null,
    Object? tasks = null,
    Object? canProcessCheckout = null,
    Object? deliveryOptions = null,
    Object? jobComment = null,
    Object? externalData = null,
  }) {
    return _then(
      _value.copyWith(
            jobNumber:
                null == jobNumber
                    ? _value.jobNumber
                    : jobNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            clientId:
                null == clientId
                    ? _value.clientId
                    : clientId // ignore: cast_nullable_to_non_nullable
                        as String,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as AddressDTO,
            destination:
                null == destination
                    ? _value.destination
                    : destination // ignore: cast_nullable_to_non_nullable
                        as AddressDTO,
            totalItemDTOs:
                null == totalItemDTOs
                    ? _value.totalItemDTOs
                    : totalItemDTOs // ignore: cast_nullable_to_non_nullable
                        as int,
            itemsReplaced:
                null == itemsReplaced
                    ? _value.itemsReplaced
                    : itemsReplaced // ignore: cast_nullable_to_non_nullable
                        as int,
            productsCost:
                null == productsCost
                    ? _value.productsCost
                    : productsCost // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ItemDTO>,
            collectWith:
                null == collectWith
                    ? _value.collectWith
                    : collectWith // ignore: cast_nullable_to_non_nullable
                        as CollectWithDTO,
            recipient:
                null == recipient
                    ? _value.recipient
                    : recipient // ignore: cast_nullable_to_non_nullable
                        as RecipientDTO,
            tasks:
                null == tasks
                    ? _value.tasks
                    : tasks // ignore: cast_nullable_to_non_nullable
                        as TasksDTO,
            canProcessCheckout:
                null == canProcessCheckout
                    ? _value.canProcessCheckout
                    : canProcessCheckout // ignore: cast_nullable_to_non_nullable
                        as bool,
            deliveryOptions:
                null == deliveryOptions
                    ? _value.deliveryOptions
                    : deliveryOptions // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            jobComment:
                null == jobComment
                    ? _value.jobComment
                    : jobComment // ignore: cast_nullable_to_non_nullable
                        as String,
            externalData:
                null == externalData
                    ? _value.externalData
                    : externalData // ignore: cast_nullable_to_non_nullable
                        as ExternalDataDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDTOCopyWith<$Res> get origin {
    return $AddressDTOCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDTOCopyWith<$Res> get destination {
    return $AddressDTOCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get productsCost {
    return $MoneyDTOCopyWith<$Res>(_value.productsCost, (value) {
      return _then(_value.copyWith(productsCost: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectWithDTOCopyWith<$Res> get collectWith {
    return $CollectWithDTOCopyWith<$Res>(_value.collectWith, (value) {
      return _then(_value.copyWith(collectWith: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientDTOCopyWith<$Res> get recipient {
    return $RecipientDTOCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TasksDTOCopyWith<$Res> get tasks {
    return $TasksDTOCopyWith<$Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalDataDTOCopyWith<$Res> get externalData {
    return $ExternalDataDTOCopyWith<$Res>(_value.externalData, (value) {
      return _then(_value.copyWith(externalData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobResponseDTOImplCopyWith<$Res>
    implements $JobResponseDTOCopyWith<$Res> {
  factory _$$JobResponseDTOImplCopyWith(
    _$JobResponseDTOImpl value,
    $Res Function(_$JobResponseDTOImpl) then,
  ) = __$$JobResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'job_number') String jobNumber,
    @JsonKey(name: 'client_id') String clientId,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime endTime,
    String state,
    AddressDTO origin,
    AddressDTO destination,
    @JsonKey(name: 'total_items') int totalItemDTOs,
    @JsonKey(name: 'items_replaced') int itemsReplaced,
    @JsonKey(name: 'products_cost') MoneyDTO productsCost,
    List<ItemDTO> items,
    @JsonKey(name: 'collect_with') CollectWithDTO collectWith,
    RecipientDTO recipient,
    TasksDTO tasks,
    @JsonKey(name: 'can_process_checkout') bool canProcessCheckout,
    @JsonKey(name: 'delivery_options') List<dynamic> deliveryOptions,
    @JsonKey(name: 'job_comment') String jobComment,
    @JsonKey(name: 'external_data') ExternalDataDTO externalData,
  });

  @override
  $AddressDTOCopyWith<$Res> get origin;
  @override
  $AddressDTOCopyWith<$Res> get destination;
  @override
  $MoneyDTOCopyWith<$Res> get productsCost;
  @override
  $CollectWithDTOCopyWith<$Res> get collectWith;
  @override
  $RecipientDTOCopyWith<$Res> get recipient;
  @override
  $TasksDTOCopyWith<$Res> get tasks;
  @override
  $ExternalDataDTOCopyWith<$Res> get externalData;
}

/// @nodoc
class __$$JobResponseDTOImplCopyWithImpl<$Res>
    extends _$JobResponseDTOCopyWithImpl<$Res, _$JobResponseDTOImpl>
    implements _$$JobResponseDTOImplCopyWith<$Res> {
  __$$JobResponseDTOImplCopyWithImpl(
    _$JobResponseDTOImpl _value,
    $Res Function(_$JobResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobNumber = null,
    Object? clientId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? state = null,
    Object? origin = null,
    Object? destination = null,
    Object? totalItemDTOs = null,
    Object? itemsReplaced = null,
    Object? productsCost = null,
    Object? items = null,
    Object? collectWith = null,
    Object? recipient = null,
    Object? tasks = null,
    Object? canProcessCheckout = null,
    Object? deliveryOptions = null,
    Object? jobComment = null,
    Object? externalData = null,
  }) {
    return _then(
      _$JobResponseDTOImpl(
        jobNumber:
            null == jobNumber
                ? _value.jobNumber
                : jobNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        clientId:
            null == clientId
                ? _value.clientId
                : clientId // ignore: cast_nullable_to_non_nullable
                    as String,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as AddressDTO,
        destination:
            null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                    as AddressDTO,
        totalItemDTOs:
            null == totalItemDTOs
                ? _value.totalItemDTOs
                : totalItemDTOs // ignore: cast_nullable_to_non_nullable
                    as int,
        itemsReplaced:
            null == itemsReplaced
                ? _value.itemsReplaced
                : itemsReplaced // ignore: cast_nullable_to_non_nullable
                    as int,
        productsCost:
            null == productsCost
                ? _value.productsCost
                : productsCost // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ItemDTO>,
        collectWith:
            null == collectWith
                ? _value.collectWith
                : collectWith // ignore: cast_nullable_to_non_nullable
                    as CollectWithDTO,
        recipient:
            null == recipient
                ? _value.recipient
                : recipient // ignore: cast_nullable_to_non_nullable
                    as RecipientDTO,
        tasks:
            null == tasks
                ? _value.tasks
                : tasks // ignore: cast_nullable_to_non_nullable
                    as TasksDTO,
        canProcessCheckout:
            null == canProcessCheckout
                ? _value.canProcessCheckout
                : canProcessCheckout // ignore: cast_nullable_to_non_nullable
                    as bool,
        deliveryOptions:
            null == deliveryOptions
                ? _value._deliveryOptions
                : deliveryOptions // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        jobComment:
            null == jobComment
                ? _value.jobComment
                : jobComment // ignore: cast_nullable_to_non_nullable
                    as String,
        externalData:
            null == externalData
                ? _value.externalData
                : externalData // ignore: cast_nullable_to_non_nullable
                    as ExternalDataDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobResponseDTOImpl implements _JobResponseDTO {
  const _$JobResponseDTOImpl({
    @JsonKey(name: 'job_number') required this.jobNumber,
    @JsonKey(name: 'client_id') required this.clientId,
    @JsonKey(name: 'start_time') required this.startTime,
    @JsonKey(name: 'end_time') required this.endTime,
    required this.state,
    required this.origin,
    required this.destination,
    @JsonKey(name: 'total_items') required this.totalItemDTOs,
    @JsonKey(name: 'items_replaced') required this.itemsReplaced,
    @JsonKey(name: 'products_cost') required this.productsCost,
    required final List<ItemDTO> items,
    @JsonKey(name: 'collect_with') required this.collectWith,
    required this.recipient,
    required this.tasks,
    @JsonKey(name: 'can_process_checkout') required this.canProcessCheckout,
    @JsonKey(name: 'delivery_options')
    final List<dynamic> deliveryOptions = const [],
    @JsonKey(name: 'job_comment') required this.jobComment,
    @JsonKey(name: 'external_data') required this.externalData,
  }) : _items = items,
       _deliveryOptions = deliveryOptions;

  factory _$JobResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobResponseDTOImplFromJson(json);

  /// Número único de trabajo.
  @override
  @JsonKey(name: 'job_number')
  final String jobNumber;

  /// Identificador del cliente.
  @override
  @JsonKey(name: 'client_id')
  final String clientId;

  /// Fecha y hora de inicio del trabajo.
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;

  /// Fecha y hora de finalización del trabajo.
  @override
  @JsonKey(name: 'end_time')
  final DateTime endTime;

  /// Estado actual del trabajo.
  @override
  final String state;

  /// Información de la dirección de origen.
  @override
  final AddressDTO origin;

  /// Información de la dirección de destino.
  @override
  final AddressDTO destination;

  /// Número total de ítems.
  @override
  @JsonKey(name: 'total_items')
  final int totalItemDTOs;

  /// Número de ítems reemplazados.
  @override
  @JsonKey(name: 'items_replaced')
  final int itemsReplaced;

  /// Información del costo de productos.
  @override
  @JsonKey(name: 'products_cost')
  final MoneyDTO productsCost;

  /// Lista de ítems.
  final List<ItemDTO> _items;

  /// Lista de ítems.
  @override
  List<ItemDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Información sobre el método de recolección y pago.
  @override
  @JsonKey(name: 'collect_with')
  final CollectWithDTO collectWith;

  /// Datos del destinatario.
  @override
  final RecipientDTO recipient;

  /// Detalles de las tareas.
  @override
  final TasksDTO tasks;

  /// Indica si se puede procesar el checkout.
  @override
  @JsonKey(name: 'can_process_checkout')
  final bool canProcessCheckout;

  /// Opciones de entrega.
  final List<dynamic> _deliveryOptions;

  /// Opciones de entrega.
  @override
  @JsonKey(name: 'delivery_options')
  List<dynamic> get deliveryOptions {
    if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryOptions);
  }

  /// Comentario del trabajo.
  @override
  @JsonKey(name: 'job_comment')
  final String jobComment;

  /// Datos externos (webhook y backoffice).
  @override
  @JsonKey(name: 'external_data')
  final ExternalDataDTO externalData;

  @override
  String toString() {
    return 'JobResponseDTO(jobNumber: $jobNumber, clientId: $clientId, startTime: $startTime, endTime: $endTime, state: $state, origin: $origin, destination: $destination, totalItemDTOs: $totalItemDTOs, itemsReplaced: $itemsReplaced, productsCost: $productsCost, items: $items, collectWith: $collectWith, recipient: $recipient, tasks: $tasks, canProcessCheckout: $canProcessCheckout, deliveryOptions: $deliveryOptions, jobComment: $jobComment, externalData: $externalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobResponseDTOImpl &&
            (identical(other.jobNumber, jobNumber) ||
                other.jobNumber == jobNumber) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.totalItemDTOs, totalItemDTOs) ||
                other.totalItemDTOs == totalItemDTOs) &&
            (identical(other.itemsReplaced, itemsReplaced) ||
                other.itemsReplaced == itemsReplaced) &&
            (identical(other.productsCost, productsCost) ||
                other.productsCost == productsCost) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.collectWith, collectWith) ||
                other.collectWith == collectWith) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.canProcessCheckout, canProcessCheckout) ||
                other.canProcessCheckout == canProcessCheckout) &&
            const DeepCollectionEquality().equals(
              other._deliveryOptions,
              _deliveryOptions,
            ) &&
            (identical(other.jobComment, jobComment) ||
                other.jobComment == jobComment) &&
            (identical(other.externalData, externalData) ||
                other.externalData == externalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    jobNumber,
    clientId,
    startTime,
    endTime,
    state,
    origin,
    destination,
    totalItemDTOs,
    itemsReplaced,
    productsCost,
    const DeepCollectionEquality().hash(_items),
    collectWith,
    recipient,
    tasks,
    canProcessCheckout,
    const DeepCollectionEquality().hash(_deliveryOptions),
    jobComment,
    externalData,
  );

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobResponseDTOImplCopyWith<_$JobResponseDTOImpl> get copyWith =>
      __$$JobResponseDTOImplCopyWithImpl<_$JobResponseDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JobResponseDTOImplToJson(this);
  }
}

abstract class _JobResponseDTO implements JobResponseDTO {
  const factory _JobResponseDTO({
    @JsonKey(name: 'job_number') required final String jobNumber,
    @JsonKey(name: 'client_id') required final String clientId,
    @JsonKey(name: 'start_time') required final DateTime startTime,
    @JsonKey(name: 'end_time') required final DateTime endTime,
    required final String state,
    required final AddressDTO origin,
    required final AddressDTO destination,
    @JsonKey(name: 'total_items') required final int totalItemDTOs,
    @JsonKey(name: 'items_replaced') required final int itemsReplaced,
    @JsonKey(name: 'products_cost') required final MoneyDTO productsCost,
    required final List<ItemDTO> items,
    @JsonKey(name: 'collect_with') required final CollectWithDTO collectWith,
    required final RecipientDTO recipient,
    required final TasksDTO tasks,
    @JsonKey(name: 'can_process_checkout')
    required final bool canProcessCheckout,
    @JsonKey(name: 'delivery_options') final List<dynamic> deliveryOptions,
    @JsonKey(name: 'job_comment') required final String jobComment,
    @JsonKey(name: 'external_data') required final ExternalDataDTO externalData,
  }) = _$JobResponseDTOImpl;

  factory _JobResponseDTO.fromJson(Map<String, dynamic> json) =
      _$JobResponseDTOImpl.fromJson;

  /// Número único de trabajo.
  @override
  @JsonKey(name: 'job_number')
  String get jobNumber;

  /// Identificador del cliente.
  @override
  @JsonKey(name: 'client_id')
  String get clientId;

  /// Fecha y hora de inicio del trabajo.
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;

  /// Fecha y hora de finalización del trabajo.
  @override
  @JsonKey(name: 'end_time')
  DateTime get endTime;

  /// Estado actual del trabajo.
  @override
  String get state;

  /// Información de la dirección de origen.
  @override
  AddressDTO get origin;

  /// Información de la dirección de destino.
  @override
  AddressDTO get destination;

  /// Número total de ítems.
  @override
  @JsonKey(name: 'total_items')
  int get totalItemDTOs;

  /// Número de ítems reemplazados.
  @override
  @JsonKey(name: 'items_replaced')
  int get itemsReplaced;

  /// Información del costo de productos.
  @override
  @JsonKey(name: 'products_cost')
  MoneyDTO get productsCost;

  /// Lista de ítems.
  @override
  List<ItemDTO> get items;

  /// Información sobre el método de recolección y pago.
  @override
  @JsonKey(name: 'collect_with')
  CollectWithDTO get collectWith;

  /// Datos del destinatario.
  @override
  RecipientDTO get recipient;

  /// Detalles de las tareas.
  @override
  TasksDTO get tasks;

  /// Indica si se puede procesar el checkout.
  @override
  @JsonKey(name: 'can_process_checkout')
  bool get canProcessCheckout;

  /// Opciones de entrega.
  @override
  @JsonKey(name: 'delivery_options')
  List<dynamic> get deliveryOptions;

  /// Comentario del trabajo.
  @override
  @JsonKey(name: 'job_comment')
  String get jobComment;

  /// Datos externos (webhook y backoffice).
  @override
  @JsonKey(name: 'external_data')
  ExternalDataDTO get externalData;

  /// Create a copy of JobResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobResponseDTOImplCopyWith<_$JobResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDTO {
  /// Nombre de la ubicación.
  String get name => throw _privateConstructorUsedError;

  /// Dirección principal.
  String get address => throw _privateConstructorUsedError;

  /// Dirección secundaria.
  @JsonKey(name: 'address_two')
  String get addressTwo => throw _privateConstructorUsedError;

  /// País.
  String get country => throw _privateConstructorUsedError;

  /// Estado o región.
  String get state => throw _privateConstructorUsedError;

  /// Ciudad.
  String get city => throw _privateConstructorUsedError;

  /// Código postal.
  @JsonKey(name: 'zip_code')
  String get zipCode => throw _privateConstructorUsedError;

  /// Descripción de la dirección.
  String get description => throw _privateConstructorUsedError;

  /// Coordenadas geográficas.
  CoordinatesDTO get coordinates => throw _privateConstructorUsedError;

  /// Serializes this AddressDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
    AddressDTO value,
    $Res Function(AddressDTO) then,
  ) = _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String addressTwo,
    String country,
    String state,
    String city,
    @JsonKey(name: 'zip_code') String zipCode,
    String description,
    CoordinatesDTO coordinates,
  });

  $CoordinatesDTOCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? zipCode = null,
    Object? description = null,
    Object? coordinates = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            addressTwo:
                null == addressTwo
                    ? _value.addressTwo
                    : addressTwo // ignore: cast_nullable_to_non_nullable
                        as String,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            zipCode:
                null == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            coordinates:
                null == coordinates
                    ? _value.coordinates
                    : coordinates // ignore: cast_nullable_to_non_nullable
                        as CoordinatesDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesDTOCopyWith<$Res> get coordinates {
    return $CoordinatesDTOCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDTOImplCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$AddressDTOImplCopyWith(
    _$AddressDTOImpl value,
    $Res Function(_$AddressDTOImpl) then,
  ) = __$$AddressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String addressTwo,
    String country,
    String state,
    String city,
    @JsonKey(name: 'zip_code') String zipCode,
    String description,
    CoordinatesDTO coordinates,
  });

  @override
  $CoordinatesDTOCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$AddressDTOImplCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$AddressDTOImpl>
    implements _$$AddressDTOImplCopyWith<$Res> {
  __$$AddressDTOImplCopyWithImpl(
    _$AddressDTOImpl _value,
    $Res Function(_$AddressDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? zipCode = null,
    Object? description = null,
    Object? coordinates = null,
  }) {
    return _then(
      _$AddressDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        addressTwo:
            null == addressTwo
                ? _value.addressTwo
                : addressTwo // ignore: cast_nullable_to_non_nullable
                    as String,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        zipCode:
            null == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        coordinates:
            null == coordinates
                ? _value.coordinates
                : coordinates // ignore: cast_nullable_to_non_nullable
                    as CoordinatesDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDTOImpl implements _AddressDTO {
  const _$AddressDTOImpl({
    required this.name,
    required this.address,
    @JsonKey(name: 'address_two') required this.addressTwo,
    required this.country,
    required this.state,
    required this.city,
    @JsonKey(name: 'zip_code') required this.zipCode,
    required this.description,
    required this.coordinates,
  });

  factory _$AddressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDTOImplFromJson(json);

  /// Nombre de la ubicación.
  @override
  final String name;

  /// Dirección principal.
  @override
  final String address;

  /// Dirección secundaria.
  @override
  @JsonKey(name: 'address_two')
  final String addressTwo;

  /// País.
  @override
  final String country;

  /// Estado o región.
  @override
  final String state;

  /// Ciudad.
  @override
  final String city;

  /// Código postal.
  @override
  @JsonKey(name: 'zip_code')
  final String zipCode;

  /// Descripción de la dirección.
  @override
  final String description;

  /// Coordenadas geográficas.
  @override
  final CoordinatesDTO coordinates;

  @override
  String toString() {
    return 'AddressDTO(name: $name, address: $address, addressTwo: $addressTwo, country: $country, state: $state, city: $city, zipCode: $zipCode, description: $description, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressTwo, addressTwo) ||
                other.addressTwo == addressTwo) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    address,
    addressTwo,
    country,
    state,
    city,
    zipCode,
    description,
    coordinates,
  );

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDTOImplCopyWith<_$AddressDTOImpl> get copyWith =>
      __$$AddressDTOImplCopyWithImpl<_$AddressDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDTOImplToJson(this);
  }
}

abstract class _AddressDTO implements AddressDTO {
  const factory _AddressDTO({
    required final String name,
    required final String address,
    @JsonKey(name: 'address_two') required final String addressTwo,
    required final String country,
    required final String state,
    required final String city,
    @JsonKey(name: 'zip_code') required final String zipCode,
    required final String description,
    required final CoordinatesDTO coordinates,
  }) = _$AddressDTOImpl;

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$AddressDTOImpl.fromJson;

  /// Nombre de la ubicación.
  @override
  String get name;

  /// Dirección principal.
  @override
  String get address;

  /// Dirección secundaria.
  @override
  @JsonKey(name: 'address_two')
  String get addressTwo;

  /// País.
  @override
  String get country;

  /// Estado o región.
  @override
  String get state;

  /// Ciudad.
  @override
  String get city;

  /// Código postal.
  @override
  @JsonKey(name: 'zip_code')
  String get zipCode;

  /// Descripción de la dirección.
  @override
  String get description;

  /// Coordenadas geográficas.
  @override
  CoordinatesDTO get coordinates;

  /// Create a copy of AddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDTOImplCopyWith<_$AddressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordinatesDTO _$CoordinatesDTOFromJson(Map<String, dynamic> json) {
  return _CoordinatesDTO.fromJson(json);
}

/// @nodoc
mixin _$CoordinatesDTO {
  /// Latitud.
  double get lat => throw _privateConstructorUsedError;

  /// Longitud.
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this CoordinatesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordinatesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesDTOCopyWith<CoordinatesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesDTOCopyWith<$Res> {
  factory $CoordinatesDTOCopyWith(
    CoordinatesDTO value,
    $Res Function(CoordinatesDTO) then,
  ) = _$CoordinatesDTOCopyWithImpl<$Res, CoordinatesDTO>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$CoordinatesDTOCopyWithImpl<$Res, $Val extends CoordinatesDTO>
    implements $CoordinatesDTOCopyWith<$Res> {
  _$CoordinatesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinatesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _value.copyWith(
            lat:
                null == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as double,
            lng:
                null == lng
                    ? _value.lng
                    : lng // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoordinatesDTOImplCopyWith<$Res>
    implements $CoordinatesDTOCopyWith<$Res> {
  factory _$$CoordinatesDTOImplCopyWith(
    _$CoordinatesDTOImpl value,
    $Res Function(_$CoordinatesDTOImpl) then,
  ) = __$$CoordinatesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$CoordinatesDTOImplCopyWithImpl<$Res>
    extends _$CoordinatesDTOCopyWithImpl<$Res, _$CoordinatesDTOImpl>
    implements _$$CoordinatesDTOImplCopyWith<$Res> {
  __$$CoordinatesDTOImplCopyWithImpl(
    _$CoordinatesDTOImpl _value,
    $Res Function(_$CoordinatesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoordinatesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$CoordinatesDTOImpl(
        lat:
            null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as double,
        lng:
            null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesDTOImpl implements _CoordinatesDTO {
  const _$CoordinatesDTOImpl({required this.lat, required this.lng});

  factory _$CoordinatesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesDTOImplFromJson(json);

  /// Latitud.
  @override
  final double lat;

  /// Longitud.
  @override
  final double lng;

  @override
  String toString() {
    return 'CoordinatesDTO(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesDTOImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of CoordinatesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesDTOImplCopyWith<_$CoordinatesDTOImpl> get copyWith =>
      __$$CoordinatesDTOImplCopyWithImpl<_$CoordinatesDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesDTOImplToJson(this);
  }
}

abstract class _CoordinatesDTO implements CoordinatesDTO {
  const factory _CoordinatesDTO({
    required final double lat,
    required final double lng,
  }) = _$CoordinatesDTOImpl;

  factory _CoordinatesDTO.fromJson(Map<String, dynamic> json) =
      _$CoordinatesDTOImpl.fromJson;

  /// Latitud.
  @override
  double get lat;

  /// Longitud.
  @override
  double get lng;

  /// Create a copy of CoordinatesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesDTOImplCopyWith<_$CoordinatesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoneyDTO _$MoneyDTOFromJson(Map<String, dynamic> json) {
  return _MoneyDTO.fromJson(json);
}

/// @nodoc
mixin _$MoneyDTO {
  /// Valor monetario.
  num get amount => throw _privateConstructorUsedError;

  /// Código de moneda.
  @JsonKey(name: 'currency_code')
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this MoneyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyDTOCopyWith<MoneyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyDTOCopyWith<$Res> {
  factory $MoneyDTOCopyWith(MoneyDTO value, $Res Function(MoneyDTO) then) =
      _$MoneyDTOCopyWithImpl<$Res, MoneyDTO>;
  @useResult
  $Res call({num amount, @JsonKey(name: 'currency_code') String currencyCode});
}

/// @nodoc
class _$MoneyDTOCopyWithImpl<$Res, $Val extends MoneyDTO>
    implements $MoneyDTOCopyWith<$Res> {
  _$MoneyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _value.copyWith(
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as num,
            currencyCode:
                null == currencyCode
                    ? _value.currencyCode
                    : currencyCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoneyDTOImplCopyWith<$Res>
    implements $MoneyDTOCopyWith<$Res> {
  factory _$$MoneyDTOImplCopyWith(
    _$MoneyDTOImpl value,
    $Res Function(_$MoneyDTOImpl) then,
  ) = __$$MoneyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, @JsonKey(name: 'currency_code') String currencyCode});
}

/// @nodoc
class __$$MoneyDTOImplCopyWithImpl<$Res>
    extends _$MoneyDTOCopyWithImpl<$Res, _$MoneyDTOImpl>
    implements _$$MoneyDTOImplCopyWith<$Res> {
  __$$MoneyDTOImplCopyWithImpl(
    _$MoneyDTOImpl _value,
    $Res Function(_$MoneyDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _$MoneyDTOImpl(
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as num,
        currencyCode:
            null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyDTOImpl implements _MoneyDTO {
  const _$MoneyDTOImpl({
    required this.amount,
    @JsonKey(name: 'currency_code') required this.currencyCode,
  });

  factory _$MoneyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyDTOImplFromJson(json);

  /// Valor monetario.
  @override
  final num amount;

  /// Código de moneda.
  @override
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  @override
  String toString() {
    return 'MoneyDTO(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyDTOImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyDTOImplCopyWith<_$MoneyDTOImpl> get copyWith =>
      __$$MoneyDTOImplCopyWithImpl<_$MoneyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyDTOImplToJson(this);
  }
}

abstract class _MoneyDTO implements MoneyDTO {
  const factory _MoneyDTO({
    required final num amount,
    @JsonKey(name: 'currency_code') required final String currencyCode,
  }) = _$MoneyDTOImpl;

  factory _MoneyDTO.fromJson(Map<String, dynamic> json) =
      _$MoneyDTOImpl.fromJson;

  /// Valor monetario.
  @override
  num get amount;

  /// Código de moneda.
  @override
  @JsonKey(name: 'currency_code')
  String get currencyCode;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyDTOImplCopyWith<_$MoneyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDTO _$ItemDTOFromJson(Map<String, dynamic> json) {
  return _ItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemDTO {
  /// Identificador único del ítem.
  String get id => throw _privateConstructorUsedError;

  /// Estado del ítem.
  String get state => throw _privateConstructorUsedError;

  /// Nombre del ítem.
  String get name => throw _privateConstructorUsedError;

  /// Identificador del paquete.
  @JsonKey(name: 'package_id')
  String get packageId => throw _privateConstructorUsedError;

  /// Cantidad del ítem.
  int get quantity => throw _privateConstructorUsedError;

  /// Cantidad encontrada.
  @JsonKey(name: 'found_quantity')
  int get foundQuantity => throw _privateConstructorUsedError;

  /// URL de la imagen del ítem.
  @JsonKey(name: 'photo_url')
  String get photoUrl => throw _privateConstructorUsedError;

  /// Detalles de la presentación.
  PresentationDTO get presentation => throw _privateConstructorUsedError;

  /// Atributos adicionales.
  AttributesDTO get attributes => throw _privateConstructorUsedError;

  /// Origen del ítem.
  String get origin => throw _privateConstructorUsedError;

  /// Comentario del ítem.
  String get comment => throw _privateConstructorUsedError;

  /// Indica si es un ítem sustituto.
  @JsonKey(name: 'is_substitute')
  bool get isSubstitute => throw _privateConstructorUsedError;

  /// Identificador del ítem que lo reemplaza.
  @JsonKey(name: 'replaced_by')
  String get replacedBy => throw _privateConstructorUsedError;

  /// Serializes this ItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res, ItemDTO>;
  @useResult
  $Res call({
    String id,
    String state,
    String name,
    @JsonKey(name: 'package_id') String packageId,
    int quantity,
    @JsonKey(name: 'found_quantity') int foundQuantity,
    @JsonKey(name: 'photo_url') String photoUrl,
    PresentationDTO presentation,
    AttributesDTO attributes,
    String origin,
    String comment,
    @JsonKey(name: 'is_substitute') bool isSubstitute,
    @JsonKey(name: 'replaced_by') String replacedBy,
  });

  $PresentationDTOCopyWith<$Res> get presentation;
  $AttributesDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ItemDTOCopyWithImpl<$Res, $Val extends ItemDTO>
    implements $ItemDTOCopyWith<$Res> {
  _$ItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? name = null,
    Object? packageId = null,
    Object? quantity = null,
    Object? foundQuantity = null,
    Object? photoUrl = null,
    Object? presentation = null,
    Object? attributes = null,
    Object? origin = null,
    Object? comment = null,
    Object? isSubstitute = null,
    Object? replacedBy = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            packageId:
                null == packageId
                    ? _value.packageId
                    : packageId // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            foundQuantity:
                null == foundQuantity
                    ? _value.foundQuantity
                    : foundQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            photoUrl:
                null == photoUrl
                    ? _value.photoUrl
                    : photoUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            presentation:
                null == presentation
                    ? _value.presentation
                    : presentation // ignore: cast_nullable_to_non_nullable
                        as PresentationDTO,
            attributes:
                null == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as AttributesDTO,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as String,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            isSubstitute:
                null == isSubstitute
                    ? _value.isSubstitute
                    : isSubstitute // ignore: cast_nullable_to_non_nullable
                        as bool,
            replacedBy:
                null == replacedBy
                    ? _value.replacedBy
                    : replacedBy // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PresentationDTOCopyWith<$Res> get presentation {
    return $PresentationDTOCopyWith<$Res>(_value.presentation, (value) {
      return _then(_value.copyWith(presentation: value) as $Val);
    });
  }

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributesDTOCopyWith<$Res> get attributes {
    return $AttributesDTOCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemDTOImplCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$$ItemDTOImplCopyWith(
    _$ItemDTOImpl value,
    $Res Function(_$ItemDTOImpl) then,
  ) = __$$ItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String state,
    String name,
    @JsonKey(name: 'package_id') String packageId,
    int quantity,
    @JsonKey(name: 'found_quantity') int foundQuantity,
    @JsonKey(name: 'photo_url') String photoUrl,
    PresentationDTO presentation,
    AttributesDTO attributes,
    String origin,
    String comment,
    @JsonKey(name: 'is_substitute') bool isSubstitute,
    @JsonKey(name: 'replaced_by') String replacedBy,
  });

  @override
  $PresentationDTOCopyWith<$Res> get presentation;
  @override
  $AttributesDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ItemDTOImplCopyWithImpl<$Res>
    extends _$ItemDTOCopyWithImpl<$Res, _$ItemDTOImpl>
    implements _$$ItemDTOImplCopyWith<$Res> {
  __$$ItemDTOImplCopyWithImpl(
    _$ItemDTOImpl _value,
    $Res Function(_$ItemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? name = null,
    Object? packageId = null,
    Object? quantity = null,
    Object? foundQuantity = null,
    Object? photoUrl = null,
    Object? presentation = null,
    Object? attributes = null,
    Object? origin = null,
    Object? comment = null,
    Object? isSubstitute = null,
    Object? replacedBy = null,
  }) {
    return _then(
      _$ItemDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        packageId:
            null == packageId
                ? _value.packageId
                : packageId // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        foundQuantity:
            null == foundQuantity
                ? _value.foundQuantity
                : foundQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        photoUrl:
            null == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        presentation:
            null == presentation
                ? _value.presentation
                : presentation // ignore: cast_nullable_to_non_nullable
                    as PresentationDTO,
        attributes:
            null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as AttributesDTO,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as String,
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        isSubstitute:
            null == isSubstitute
                ? _value.isSubstitute
                : isSubstitute // ignore: cast_nullable_to_non_nullable
                    as bool,
        replacedBy:
            null == replacedBy
                ? _value.replacedBy
                : replacedBy // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDTOImpl implements _ItemDTO {
  const _$ItemDTOImpl({
    required this.id,
    required this.state,
    required this.name,
    @JsonKey(name: 'package_id') required this.packageId,
    required this.quantity,
    @JsonKey(name: 'found_quantity') required this.foundQuantity,
    @JsonKey(name: 'photo_url') required this.photoUrl,
    required this.presentation,
    required this.attributes,
    required this.origin,
    required this.comment,
    @JsonKey(name: 'is_substitute') required this.isSubstitute,
    @JsonKey(name: 'replaced_by') required this.replacedBy,
  });

  factory _$ItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDTOImplFromJson(json);

  /// Identificador único del ítem.
  @override
  final String id;

  /// Estado del ítem.
  @override
  final String state;

  /// Nombre del ítem.
  @override
  final String name;

  /// Identificador del paquete.
  @override
  @JsonKey(name: 'package_id')
  final String packageId;

  /// Cantidad del ítem.
  @override
  final int quantity;

  /// Cantidad encontrada.
  @override
  @JsonKey(name: 'found_quantity')
  final int foundQuantity;

  /// URL de la imagen del ítem.
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;

  /// Detalles de la presentación.
  @override
  final PresentationDTO presentation;

  /// Atributos adicionales.
  @override
  final AttributesDTO attributes;

  /// Origen del ítem.
  @override
  final String origin;

  /// Comentario del ítem.
  @override
  final String comment;

  /// Indica si es un ítem sustituto.
  @override
  @JsonKey(name: 'is_substitute')
  final bool isSubstitute;

  /// Identificador del ítem que lo reemplaza.
  @override
  @JsonKey(name: 'replaced_by')
  final String replacedBy;

  @override
  String toString() {
    return 'ItemDTO(id: $id, state: $state, name: $name, packageId: $packageId, quantity: $quantity, foundQuantity: $foundQuantity, photoUrl: $photoUrl, presentation: $presentation, attributes: $attributes, origin: $origin, comment: $comment, isSubstitute: $isSubstitute, replacedBy: $replacedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.foundQuantity, foundQuantity) ||
                other.foundQuantity == foundQuantity) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.presentation, presentation) ||
                other.presentation == presentation) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isSubstitute, isSubstitute) ||
                other.isSubstitute == isSubstitute) &&
            (identical(other.replacedBy, replacedBy) ||
                other.replacedBy == replacedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    state,
    name,
    packageId,
    quantity,
    foundQuantity,
    photoUrl,
    presentation,
    attributes,
    origin,
    comment,
    isSubstitute,
    replacedBy,
  );

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDTOImplCopyWith<_$ItemDTOImpl> get copyWith =>
      __$$ItemDTOImplCopyWithImpl<_$ItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDTOImplToJson(this);
  }
}

abstract class _ItemDTO implements ItemDTO {
  const factory _ItemDTO({
    required final String id,
    required final String state,
    required final String name,
    @JsonKey(name: 'package_id') required final String packageId,
    required final int quantity,
    @JsonKey(name: 'found_quantity') required final int foundQuantity,
    @JsonKey(name: 'photo_url') required final String photoUrl,
    required final PresentationDTO presentation,
    required final AttributesDTO attributes,
    required final String origin,
    required final String comment,
    @JsonKey(name: 'is_substitute') required final bool isSubstitute,
    @JsonKey(name: 'replaced_by') required final String replacedBy,
  }) = _$ItemDTOImpl;

  factory _ItemDTO.fromJson(Map<String, dynamic> json) = _$ItemDTOImpl.fromJson;

  /// Identificador único del ítem.
  @override
  String get id;

  /// Estado del ítem.
  @override
  String get state;

  /// Nombre del ítem.
  @override
  String get name;

  /// Identificador del paquete.
  @override
  @JsonKey(name: 'package_id')
  String get packageId;

  /// Cantidad del ítem.
  @override
  int get quantity;

  /// Cantidad encontrada.
  @override
  @JsonKey(name: 'found_quantity')
  int get foundQuantity;

  /// URL de la imagen del ítem.
  @override
  @JsonKey(name: 'photo_url')
  String get photoUrl;

  /// Detalles de la presentación.
  @override
  PresentationDTO get presentation;

  /// Atributos adicionales.
  @override
  AttributesDTO get attributes;

  /// Origen del ítem.
  @override
  String get origin;

  /// Comentario del ítem.
  @override
  String get comment;

  /// Indica si es un ítem sustituto.
  @override
  @JsonKey(name: 'is_substitute')
  bool get isSubstitute;

  /// Identificador del ítem que lo reemplaza.
  @override
  @JsonKey(name: 'replaced_by')
  String get replacedBy;

  /// Create a copy of ItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemDTOImplCopyWith<_$ItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PresentationDTO _$PresentationDTOFromJson(Map<String, dynamic> json) {
  return _PresentationDTO.fromJson(json);
}

/// @nodoc
mixin _$PresentationDTO {
  /// Cantidad presentada.
  int get quantity => throw _privateConstructorUsedError;

  /// Unidad de medida.
  String get unit => throw _privateConstructorUsedError;

  /// Nombre de la presentación.
  String get name => throw _privateConstructorUsedError;

  /// Precio de la presentación.
  PriceDTO get price => throw _privateConstructorUsedError;

  /// Peso del ítem.
  num get weight => throw _privateConstructorUsedError;

  /// Lista de dimensiones.
  List<DimensionDTO> get dimensions => throw _privateConstructorUsedError;

  /// Serializes this PresentationDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresentationDTOCopyWith<PresentationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationDTOCopyWith<$Res> {
  factory $PresentationDTOCopyWith(
    PresentationDTO value,
    $Res Function(PresentationDTO) then,
  ) = _$PresentationDTOCopyWithImpl<$Res, PresentationDTO>;
  @useResult
  $Res call({
    int quantity,
    String unit,
    String name,
    PriceDTO price,
    num weight,
    List<DimensionDTO> dimensions,
  });

  $PriceDTOCopyWith<$Res> get price;
}

/// @nodoc
class _$PresentationDTOCopyWithImpl<$Res, $Val extends PresentationDTO>
    implements $PresentationDTOCopyWith<$Res> {
  _$PresentationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? unit = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? dimensions = null,
  }) {
    return _then(
      _value.copyWith(
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            unit:
                null == unit
                    ? _value.unit
                    : unit // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as PriceDTO,
            weight:
                null == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as num,
            dimensions:
                null == dimensions
                    ? _value.dimensions
                    : dimensions // ignore: cast_nullable_to_non_nullable
                        as List<DimensionDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDTOCopyWith<$Res> get price {
    return $PriceDTOCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PresentationDTOImplCopyWith<$Res>
    implements $PresentationDTOCopyWith<$Res> {
  factory _$$PresentationDTOImplCopyWith(
    _$PresentationDTOImpl value,
    $Res Function(_$PresentationDTOImpl) then,
  ) = __$$PresentationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int quantity,
    String unit,
    String name,
    PriceDTO price,
    num weight,
    List<DimensionDTO> dimensions,
  });

  @override
  $PriceDTOCopyWith<$Res> get price;
}

/// @nodoc
class __$$PresentationDTOImplCopyWithImpl<$Res>
    extends _$PresentationDTOCopyWithImpl<$Res, _$PresentationDTOImpl>
    implements _$$PresentationDTOImplCopyWith<$Res> {
  __$$PresentationDTOImplCopyWithImpl(
    _$PresentationDTOImpl _value,
    $Res Function(_$PresentationDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? unit = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? dimensions = null,
  }) {
    return _then(
      _$PresentationDTOImpl(
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        unit:
            null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as PriceDTO,
        weight:
            null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as num,
        dimensions:
            null == dimensions
                ? _value._dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                    as List<DimensionDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PresentationDTOImpl implements _PresentationDTO {
  const _$PresentationDTOImpl({
    required this.quantity,
    required this.unit,
    required this.name,
    required this.price,
    required this.weight,
    required final List<DimensionDTO> dimensions,
  }) : _dimensions = dimensions;

  factory _$PresentationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresentationDTOImplFromJson(json);

  /// Cantidad presentada.
  @override
  final int quantity;

  /// Unidad de medida.
  @override
  final String unit;

  /// Nombre de la presentación.
  @override
  final String name;

  /// Precio de la presentación.
  @override
  final PriceDTO price;

  /// Peso del ítem.
  @override
  final num weight;

  /// Lista de dimensiones.
  final List<DimensionDTO> _dimensions;

  /// Lista de dimensiones.
  @override
  List<DimensionDTO> get dimensions {
    if (_dimensions is EqualUnmodifiableListView) return _dimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dimensions);
  }

  @override
  String toString() {
    return 'PresentationDTO(quantity: $quantity, unit: $unit, name: $name, price: $price, weight: $weight, dimensions: $dimensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationDTOImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(
              other._dimensions,
              _dimensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    quantity,
    unit,
    name,
    price,
    weight,
    const DeepCollectionEquality().hash(_dimensions),
  );

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationDTOImplCopyWith<_$PresentationDTOImpl> get copyWith =>
      __$$PresentationDTOImplCopyWithImpl<_$PresentationDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PresentationDTOImplToJson(this);
  }
}

abstract class _PresentationDTO implements PresentationDTO {
  const factory _PresentationDTO({
    required final int quantity,
    required final String unit,
    required final String name,
    required final PriceDTO price,
    required final num weight,
    required final List<DimensionDTO> dimensions,
  }) = _$PresentationDTOImpl;

  factory _PresentationDTO.fromJson(Map<String, dynamic> json) =
      _$PresentationDTOImpl.fromJson;

  /// Cantidad presentada.
  @override
  int get quantity;

  /// Unidad de medida.
  @override
  String get unit;

  /// Nombre de la presentación.
  @override
  String get name;

  /// Precio de la presentación.
  @override
  PriceDTO get price;

  /// Peso del ítem.
  @override
  num get weight;

  /// Lista de dimensiones.
  @override
  List<DimensionDTO> get dimensions;

  /// Create a copy of PresentationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresentationDTOImplCopyWith<_$PresentationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceDTO _$PriceDTOFromJson(Map<String, dynamic> json) {
  return _PriceDTO.fromJson(json);
}

/// @nodoc
mixin _$PriceDTO {
  /// Valor monetario.
  num get amount => throw _privateConstructorUsedError;

  /// Código de moneda.
  @JsonKey(name: 'currency_code')
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this PriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceDTOCopyWith<PriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDTOCopyWith<$Res> {
  factory $PriceDTOCopyWith(PriceDTO value, $Res Function(PriceDTO) then) =
      _$PriceDTOCopyWithImpl<$Res, PriceDTO>;
  @useResult
  $Res call({num amount, @JsonKey(name: 'currency_code') String currencyCode});
}

/// @nodoc
class _$PriceDTOCopyWithImpl<$Res, $Val extends PriceDTO>
    implements $PriceDTOCopyWith<$Res> {
  _$PriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _value.copyWith(
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as num,
            currencyCode:
                null == currencyCode
                    ? _value.currencyCode
                    : currencyCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PriceDTOImplCopyWith<$Res>
    implements $PriceDTOCopyWith<$Res> {
  factory _$$PriceDTOImplCopyWith(
    _$PriceDTOImpl value,
    $Res Function(_$PriceDTOImpl) then,
  ) = __$$PriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, @JsonKey(name: 'currency_code') String currencyCode});
}

/// @nodoc
class __$$PriceDTOImplCopyWithImpl<$Res>
    extends _$PriceDTOCopyWithImpl<$Res, _$PriceDTOImpl>
    implements _$$PriceDTOImplCopyWith<$Res> {
  __$$PriceDTOImplCopyWithImpl(
    _$PriceDTOImpl _value,
    $Res Function(_$PriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currencyCode = null}) {
    return _then(
      _$PriceDTOImpl(
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as num,
        currencyCode:
            null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceDTOImpl implements _PriceDTO {
  const _$PriceDTOImpl({
    required this.amount,
    @JsonKey(name: 'currency_code') required this.currencyCode,
  });

  factory _$PriceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceDTOImplFromJson(json);

  /// Valor monetario.
  @override
  final num amount;

  /// Código de moneda.
  @override
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  @override
  String toString() {
    return 'PriceDTO(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceDTOImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of PriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceDTOImplCopyWith<_$PriceDTOImpl> get copyWith =>
      __$$PriceDTOImplCopyWithImpl<_$PriceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceDTOImplToJson(this);
  }
}

abstract class _PriceDTO implements PriceDTO {
  const factory _PriceDTO({
    required final num amount,
    @JsonKey(name: 'currency_code') required final String currencyCode,
  }) = _$PriceDTOImpl;

  factory _PriceDTO.fromJson(Map<String, dynamic> json) =
      _$PriceDTOImpl.fromJson;

  /// Valor monetario.
  @override
  num get amount;

  /// Código de moneda.
  @override
  @JsonKey(name: 'currency_code')
  String get currencyCode;

  /// Create a copy of PriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceDTOImplCopyWith<_$PriceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DimensionDTO _$DimensionDTOFromJson(Map<String, dynamic> json) {
  return _DimensionDTO.fromJson(json);
}

/// @nodoc
mixin _$DimensionDTO {
  /// Longitud.
  num get length => throw _privateConstructorUsedError;

  /// Anchura.
  num get width => throw _privateConstructorUsedError;

  /// Altura.
  num get height => throw _privateConstructorUsedError;

  /// Serializes this DimensionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DimensionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionDTOCopyWith<DimensionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionDTOCopyWith<$Res> {
  factory $DimensionDTOCopyWith(
    DimensionDTO value,
    $Res Function(DimensionDTO) then,
  ) = _$DimensionDTOCopyWithImpl<$Res, DimensionDTO>;
  @useResult
  $Res call({num length, num width, num height});
}

/// @nodoc
class _$DimensionDTOCopyWithImpl<$Res, $Val extends DimensionDTO>
    implements $DimensionDTOCopyWith<$Res> {
  _$DimensionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DimensionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(
      _value.copyWith(
            length:
                null == length
                    ? _value.length
                    : length // ignore: cast_nullable_to_non_nullable
                        as num,
            width:
                null == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as num,
            height:
                null == height
                    ? _value.height
                    : height // ignore: cast_nullable_to_non_nullable
                        as num,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DimensionDTOImplCopyWith<$Res>
    implements $DimensionDTOCopyWith<$Res> {
  factory _$$DimensionDTOImplCopyWith(
    _$DimensionDTOImpl value,
    $Res Function(_$DimensionDTOImpl) then,
  ) = __$$DimensionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num length, num width, num height});
}

/// @nodoc
class __$$DimensionDTOImplCopyWithImpl<$Res>
    extends _$DimensionDTOCopyWithImpl<$Res, _$DimensionDTOImpl>
    implements _$$DimensionDTOImplCopyWith<$Res> {
  __$$DimensionDTOImplCopyWithImpl(
    _$DimensionDTOImpl _value,
    $Res Function(_$DimensionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DimensionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(
      _$DimensionDTOImpl(
        length:
            null == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                    as num,
        width:
            null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as num,
        height:
            null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                    as num,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionDTOImpl implements _DimensionDTO {
  const _$DimensionDTOImpl({
    required this.length,
    required this.width,
    required this.height,
  });

  factory _$DimensionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionDTOImplFromJson(json);

  /// Longitud.
  @override
  final num length;

  /// Anchura.
  @override
  final num width;

  /// Altura.
  @override
  final num height;

  @override
  String toString() {
    return 'DimensionDTO(length: $length, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionDTOImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, width, height);

  /// Create a copy of DimensionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionDTOImplCopyWith<_$DimensionDTOImpl> get copyWith =>
      __$$DimensionDTOImplCopyWithImpl<_$DimensionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionDTOImplToJson(this);
  }
}

abstract class _DimensionDTO implements DimensionDTO {
  const factory _DimensionDTO({
    required final num length,
    required final num width,
    required final num height,
  }) = _$DimensionDTOImpl;

  factory _DimensionDTO.fromJson(Map<String, dynamic> json) =
      _$DimensionDTOImpl.fromJson;

  /// Longitud.
  @override
  num get length;

  /// Anchura.
  @override
  num get width;

  /// Altura.
  @override
  num get height;

  /// Create a copy of DimensionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionDTOImplCopyWith<_$DimensionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributesDTO _$AttributesDTOFromJson(Map<String, dynamic> json) {
  return _AttributesDTO.fromJson(json);
}

/// @nodoc
mixin _$AttributesDTO {
  /// Categoría del ítem.
  String get category => throw _privateConstructorUsedError;

  /// Otro atributo (clave en JSON: "another attributes").
  @JsonKey(name: 'another attributes')
  String get anotherAttributesDTO => throw _privateConstructorUsedError;

  /// Serializes this AttributesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesDTOCopyWith<AttributesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesDTOCopyWith<$Res> {
  factory $AttributesDTOCopyWith(
    AttributesDTO value,
    $Res Function(AttributesDTO) then,
  ) = _$AttributesDTOCopyWithImpl<$Res, AttributesDTO>;
  @useResult
  $Res call({
    String category,
    @JsonKey(name: 'another attributes') String anotherAttributesDTO,
  });
}

/// @nodoc
class _$AttributesDTOCopyWithImpl<$Res, $Val extends AttributesDTO>
    implements $AttributesDTOCopyWith<$Res> {
  _$AttributesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null, Object? anotherAttributesDTO = null}) {
    return _then(
      _value.copyWith(
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            anotherAttributesDTO:
                null == anotherAttributesDTO
                    ? _value.anotherAttributesDTO
                    : anotherAttributesDTO // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributesDTOImplCopyWith<$Res>
    implements $AttributesDTOCopyWith<$Res> {
  factory _$$AttributesDTOImplCopyWith(
    _$AttributesDTOImpl value,
    $Res Function(_$AttributesDTOImpl) then,
  ) = __$$AttributesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String category,
    @JsonKey(name: 'another attributes') String anotherAttributesDTO,
  });
}

/// @nodoc
class __$$AttributesDTOImplCopyWithImpl<$Res>
    extends _$AttributesDTOCopyWithImpl<$Res, _$AttributesDTOImpl>
    implements _$$AttributesDTOImplCopyWith<$Res> {
  __$$AttributesDTOImplCopyWithImpl(
    _$AttributesDTOImpl _value,
    $Res Function(_$AttributesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null, Object? anotherAttributesDTO = null}) {
    return _then(
      _$AttributesDTOImpl(
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        anotherAttributesDTO:
            null == anotherAttributesDTO
                ? _value.anotherAttributesDTO
                : anotherAttributesDTO // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesDTOImpl implements _AttributesDTO {
  const _$AttributesDTOImpl({
    required this.category,
    @JsonKey(name: 'another attributes') required this.anotherAttributesDTO,
  });

  factory _$AttributesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesDTOImplFromJson(json);

  /// Categoría del ítem.
  @override
  final String category;

  /// Otro atributo (clave en JSON: "another attributes").
  @override
  @JsonKey(name: 'another attributes')
  final String anotherAttributesDTO;

  @override
  String toString() {
    return 'AttributesDTO(category: $category, anotherAttributesDTO: $anotherAttributesDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesDTOImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.anotherAttributesDTO, anotherAttributesDTO) ||
                other.anotherAttributesDTO == anotherAttributesDTO));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, anotherAttributesDTO);

  /// Create a copy of AttributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesDTOImplCopyWith<_$AttributesDTOImpl> get copyWith =>
      __$$AttributesDTOImplCopyWithImpl<_$AttributesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesDTOImplToJson(this);
  }
}

abstract class _AttributesDTO implements AttributesDTO {
  const factory _AttributesDTO({
    required final String category,
    @JsonKey(name: 'another attributes')
    required final String anotherAttributesDTO,
  }) = _$AttributesDTOImpl;

  factory _AttributesDTO.fromJson(Map<String, dynamic> json) =
      _$AttributesDTOImpl.fromJson;

  /// Categoría del ítem.
  @override
  String get category;

  /// Otro atributo (clave en JSON: "another attributes").
  @override
  @JsonKey(name: 'another attributes')
  String get anotherAttributesDTO;

  /// Create a copy of AttributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesDTOImplCopyWith<_$AttributesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectWithDTO _$CollectWithDTOFromJson(Map<String, dynamic> json) {
  return _CollectWithDTO.fromJson(json);
}

/// @nodoc
mixin _$CollectWithDTO {
  /// Método de recolección.
  String get method => throw _privateConstructorUsedError;

  /// Detalles del pago.
  PaymentDTO get payment => throw _privateConstructorUsedError;

  /// Serializes this CollectWithDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectWithDTOCopyWith<CollectWithDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectWithDTOCopyWith<$Res> {
  factory $CollectWithDTOCopyWith(
    CollectWithDTO value,
    $Res Function(CollectWithDTO) then,
  ) = _$CollectWithDTOCopyWithImpl<$Res, CollectWithDTO>;
  @useResult
  $Res call({String method, PaymentDTO payment});

  $PaymentDTOCopyWith<$Res> get payment;
}

/// @nodoc
class _$CollectWithDTOCopyWithImpl<$Res, $Val extends CollectWithDTO>
    implements $CollectWithDTOCopyWith<$Res> {
  _$CollectWithDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? method = null, Object? payment = null}) {
    return _then(
      _value.copyWith(
            method:
                null == method
                    ? _value.method
                    : method // ignore: cast_nullable_to_non_nullable
                        as String,
            payment:
                null == payment
                    ? _value.payment
                    : payment // ignore: cast_nullable_to_non_nullable
                        as PaymentDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDTOCopyWith<$Res> get payment {
    return $PaymentDTOCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectWithDTOImplCopyWith<$Res>
    implements $CollectWithDTOCopyWith<$Res> {
  factory _$$CollectWithDTOImplCopyWith(
    _$CollectWithDTOImpl value,
    $Res Function(_$CollectWithDTOImpl) then,
  ) = __$$CollectWithDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, PaymentDTO payment});

  @override
  $PaymentDTOCopyWith<$Res> get payment;
}

/// @nodoc
class __$$CollectWithDTOImplCopyWithImpl<$Res>
    extends _$CollectWithDTOCopyWithImpl<$Res, _$CollectWithDTOImpl>
    implements _$$CollectWithDTOImplCopyWith<$Res> {
  __$$CollectWithDTOImplCopyWithImpl(
    _$CollectWithDTOImpl _value,
    $Res Function(_$CollectWithDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? method = null, Object? payment = null}) {
    return _then(
      _$CollectWithDTOImpl(
        method:
            null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                    as String,
        payment:
            null == payment
                ? _value.payment
                : payment // ignore: cast_nullable_to_non_nullable
                    as PaymentDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectWithDTOImpl implements _CollectWithDTO {
  const _$CollectWithDTOImpl({required this.method, required this.payment});

  factory _$CollectWithDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectWithDTOImplFromJson(json);

  /// Método de recolección.
  @override
  final String method;

  /// Detalles del pago.
  @override
  final PaymentDTO payment;

  @override
  String toString() {
    return 'CollectWithDTO(method: $method, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectWithDTOImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, payment);

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectWithDTOImplCopyWith<_$CollectWithDTOImpl> get copyWith =>
      __$$CollectWithDTOImplCopyWithImpl<_$CollectWithDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectWithDTOImplToJson(this);
  }
}

abstract class _CollectWithDTO implements CollectWithDTO {
  const factory _CollectWithDTO({
    required final String method,
    required final PaymentDTO payment,
  }) = _$CollectWithDTOImpl;

  factory _CollectWithDTO.fromJson(Map<String, dynamic> json) =
      _$CollectWithDTOImpl.fromJson;

  /// Método de recolección.
  @override
  String get method;

  /// Detalles del pago.
  @override
  PaymentDTO get payment;

  /// Create a copy of CollectWithDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectWithDTOImplCopyWith<_$CollectWithDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDTO _$PaymentDTOFromJson(Map<String, dynamic> json) {
  return _PaymentDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentDTO {
  /// Valor monetario.
  num get amount => throw _privateConstructorUsedError;

  /// Moneda utilizada en el pago.
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this PaymentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDTOCopyWith<PaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDTOCopyWith<$Res> {
  factory $PaymentDTOCopyWith(
    PaymentDTO value,
    $Res Function(PaymentDTO) then,
  ) = _$PaymentDTOCopyWithImpl<$Res, PaymentDTO>;
  @useResult
  $Res call({num amount, String currency});
}

/// @nodoc
class _$PaymentDTOCopyWithImpl<$Res, $Val extends PaymentDTO>
    implements $PaymentDTOCopyWith<$Res> {
  _$PaymentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currency = null}) {
    return _then(
      _value.copyWith(
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as num,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentDTOImplCopyWith<$Res>
    implements $PaymentDTOCopyWith<$Res> {
  factory _$$PaymentDTOImplCopyWith(
    _$PaymentDTOImpl value,
    $Res Function(_$PaymentDTOImpl) then,
  ) = __$$PaymentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, String currency});
}

/// @nodoc
class __$$PaymentDTOImplCopyWithImpl<$Res>
    extends _$PaymentDTOCopyWithImpl<$Res, _$PaymentDTOImpl>
    implements _$$PaymentDTOImplCopyWith<$Res> {
  __$$PaymentDTOImplCopyWithImpl(
    _$PaymentDTOImpl _value,
    $Res Function(_$PaymentDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currency = null}) {
    return _then(
      _$PaymentDTOImpl(
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as num,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDTOImpl implements _PaymentDTO {
  const _$PaymentDTOImpl({required this.amount, required this.currency});

  factory _$PaymentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDTOImplFromJson(json);

  /// Valor monetario.
  @override
  final num amount;

  /// Moneda utilizada en el pago.
  @override
  final String currency;

  @override
  String toString() {
    return 'PaymentDTO(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDTOImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of PaymentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDTOImplCopyWith<_$PaymentDTOImpl> get copyWith =>
      __$$PaymentDTOImplCopyWithImpl<_$PaymentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDTOImplToJson(this);
  }
}

abstract class _PaymentDTO implements PaymentDTO {
  const factory _PaymentDTO({
    required final num amount,
    required final String currency,
  }) = _$PaymentDTOImpl;

  factory _PaymentDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentDTOImpl.fromJson;

  /// Valor monetario.
  @override
  num get amount;

  /// Moneda utilizada en el pago.
  @override
  String get currency;

  /// Create a copy of PaymentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDTOImplCopyWith<_$PaymentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipientDTO _$RecipientDTOFromJson(Map<String, dynamic> json) {
  return _RecipientDTO.fromJson(json);
}

/// @nodoc
mixin _$RecipientDTO {
  /// Nombre del destinatario.
  String get name => throw _privateConstructorUsedError;

  /// Correo electrónico.
  String get email => throw _privateConstructorUsedError;

  /// Número de teléfono.
  @JsonKey(name: 'phone_number')
  int get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this RecipientDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipientDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipientDTOCopyWith<RecipientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientDTOCopyWith<$Res> {
  factory $RecipientDTOCopyWith(
    RecipientDTO value,
    $Res Function(RecipientDTO) then,
  ) = _$RecipientDTOCopyWithImpl<$Res, RecipientDTO>;
  @useResult
  $Res call({
    String name,
    String email,
    @JsonKey(name: 'phone_number') int phoneNumber,
  });
}

/// @nodoc
class _$RecipientDTOCopyWithImpl<$Res, $Val extends RecipientDTO>
    implements $RecipientDTOCopyWith<$Res> {
  _$RecipientDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipientDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecipientDTOImplCopyWith<$Res>
    implements $RecipientDTOCopyWith<$Res> {
  factory _$$RecipientDTOImplCopyWith(
    _$RecipientDTOImpl value,
    $Res Function(_$RecipientDTOImpl) then,
  ) = __$$RecipientDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String email,
    @JsonKey(name: 'phone_number') int phoneNumber,
  });
}

/// @nodoc
class __$$RecipientDTOImplCopyWithImpl<$Res>
    extends _$RecipientDTOCopyWithImpl<$Res, _$RecipientDTOImpl>
    implements _$$RecipientDTOImplCopyWith<$Res> {
  __$$RecipientDTOImplCopyWithImpl(
    _$RecipientDTOImpl _value,
    $Res Function(_$RecipientDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecipientDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _$RecipientDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientDTOImpl implements _RecipientDTO {
  const _$RecipientDTOImpl({
    required this.name,
    required this.email,
    @JsonKey(name: 'phone_number') required this.phoneNumber,
  });

  factory _$RecipientDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientDTOImplFromJson(json);

  /// Nombre del destinatario.
  @override
  final String name;

  /// Correo electrónico.
  @override
  final String email;

  /// Número de teléfono.
  @override
  @JsonKey(name: 'phone_number')
  final int phoneNumber;

  @override
  String toString() {
    return 'RecipientDTO(name: $name, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phoneNumber);

  /// Create a copy of RecipientDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientDTOImplCopyWith<_$RecipientDTOImpl> get copyWith =>
      __$$RecipientDTOImplCopyWithImpl<_$RecipientDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientDTOImplToJson(this);
  }
}

abstract class _RecipientDTO implements RecipientDTO {
  const factory _RecipientDTO({
    required final String name,
    required final String email,
    @JsonKey(name: 'phone_number') required final int phoneNumber,
  }) = _$RecipientDTOImpl;

  factory _RecipientDTO.fromJson(Map<String, dynamic> json) =
      _$RecipientDTOImpl.fromJson;

  /// Nombre del destinatario.
  @override
  String get name;

  /// Correo electrónico.
  @override
  String get email;

  /// Número de teléfono.
  @override
  @JsonKey(name: 'phone_number')
  int get phoneNumber;

  /// Create a copy of RecipientDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipientDTOImplCopyWith<_$RecipientDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksDTO _$TasksDTOFromJson(Map<String, dynamic> json) {
  return _TasksDTO.fromJson(json);
}

/// @nodoc
mixin _$TasksDTO {
  /// Identificador de la tarea.
  String get id => throw _privateConstructorUsedError;

  /// Tipo de tarea.
  String get type => throw _privateConstructorUsedError;

  /// Estado de la tarea.
  String get state => throw _privateConstructorUsedError;

  /// Recurso asociado.
  String get resource => throw _privateConstructorUsedError;

  /// Información del pago relacionado.
  String get payment => throw _privateConstructorUsedError;

  /// Lista de pasos de la tarea.
  List<TaskStepDTO> get steps => throw _privateConstructorUsedError;

  /// Serializes this TasksDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksDTOCopyWith<TasksDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksDTOCopyWith<$Res> {
  factory $TasksDTOCopyWith(TasksDTO value, $Res Function(TasksDTO) then) =
      _$TasksDTOCopyWithImpl<$Res, TasksDTO>;
  @useResult
  $Res call({
    String id,
    String type,
    String state,
    String resource,
    String payment,
    List<TaskStepDTO> steps,
  });
}

/// @nodoc
class _$TasksDTOCopyWithImpl<$Res, $Val extends TasksDTO>
    implements $TasksDTOCopyWith<$Res> {
  _$TasksDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? state = null,
    Object? resource = null,
    Object? payment = null,
    Object? steps = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            resource:
                null == resource
                    ? _value.resource
                    : resource // ignore: cast_nullable_to_non_nullable
                        as String,
            payment:
                null == payment
                    ? _value.payment
                    : payment // ignore: cast_nullable_to_non_nullable
                        as String,
            steps:
                null == steps
                    ? _value.steps
                    : steps // ignore: cast_nullable_to_non_nullable
                        as List<TaskStepDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TasksDTOImplCopyWith<$Res>
    implements $TasksDTOCopyWith<$Res> {
  factory _$$TasksDTOImplCopyWith(
    _$TasksDTOImpl value,
    $Res Function(_$TasksDTOImpl) then,
  ) = __$$TasksDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String type,
    String state,
    String resource,
    String payment,
    List<TaskStepDTO> steps,
  });
}

/// @nodoc
class __$$TasksDTOImplCopyWithImpl<$Res>
    extends _$TasksDTOCopyWithImpl<$Res, _$TasksDTOImpl>
    implements _$$TasksDTOImplCopyWith<$Res> {
  __$$TasksDTOImplCopyWithImpl(
    _$TasksDTOImpl _value,
    $Res Function(_$TasksDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TasksDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? state = null,
    Object? resource = null,
    Object? payment = null,
    Object? steps = null,
  }) {
    return _then(
      _$TasksDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        resource:
            null == resource
                ? _value.resource
                : resource // ignore: cast_nullable_to_non_nullable
                    as String,
        payment:
            null == payment
                ? _value.payment
                : payment // ignore: cast_nullable_to_non_nullable
                    as String,
        steps:
            null == steps
                ? _value._steps
                : steps // ignore: cast_nullable_to_non_nullable
                    as List<TaskStepDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksDTOImpl implements _TasksDTO {
  const _$TasksDTOImpl({
    required this.id,
    required this.type,
    required this.state,
    required this.resource,
    required this.payment,
    required final List<TaskStepDTO> steps,
  }) : _steps = steps;

  factory _$TasksDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksDTOImplFromJson(json);

  /// Identificador de la tarea.
  @override
  final String id;

  /// Tipo de tarea.
  @override
  final String type;

  /// Estado de la tarea.
  @override
  final String state;

  /// Recurso asociado.
  @override
  final String resource;

  /// Información del pago relacionado.
  @override
  final String payment;

  /// Lista de pasos de la tarea.
  final List<TaskStepDTO> _steps;

  /// Lista de pasos de la tarea.
  @override
  List<TaskStepDTO> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'TasksDTO(id: $id, type: $type, state: $state, resource: $resource, payment: $payment, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    state,
    resource,
    payment,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of TasksDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksDTOImplCopyWith<_$TasksDTOImpl> get copyWith =>
      __$$TasksDTOImplCopyWithImpl<_$TasksDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksDTOImplToJson(this);
  }
}

abstract class _TasksDTO implements TasksDTO {
  const factory _TasksDTO({
    required final String id,
    required final String type,
    required final String state,
    required final String resource,
    required final String payment,
    required final List<TaskStepDTO> steps,
  }) = _$TasksDTOImpl;

  factory _TasksDTO.fromJson(Map<String, dynamic> json) =
      _$TasksDTOImpl.fromJson;

  /// Identificador de la tarea.
  @override
  String get id;

  /// Tipo de tarea.
  @override
  String get type;

  /// Estado de la tarea.
  @override
  String get state;

  /// Recurso asociado.
  @override
  String get resource;

  /// Información del pago relacionado.
  @override
  String get payment;

  /// Lista de pasos de la tarea.
  @override
  List<TaskStepDTO> get steps;

  /// Create a copy of TasksDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksDTOImplCopyWith<_$TasksDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskStepDTO _$TaskStepDTOFromJson(Map<String, dynamic> json) {
  return _TaskStepDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskStepDTO {
  /// Identificador del paso.
  String get id => throw _privateConstructorUsedError;

  /// Estado del paso.
  String get state => throw _privateConstructorUsedError;

  /// Tipo del paso.
  String get type => throw _privateConstructorUsedError;

  /// Serializes this TaskStepDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskStepDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStepDTOCopyWith<TaskStepDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStepDTOCopyWith<$Res> {
  factory $TaskStepDTOCopyWith(
    TaskStepDTO value,
    $Res Function(TaskStepDTO) then,
  ) = _$TaskStepDTOCopyWithImpl<$Res, TaskStepDTO>;
  @useResult
  $Res call({String id, String state, String type});
}

/// @nodoc
class _$TaskStepDTOCopyWithImpl<$Res, $Val extends TaskStepDTO>
    implements $TaskStepDTOCopyWith<$Res> {
  _$TaskStepDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskStepDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? state = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskStepDTOImplCopyWith<$Res>
    implements $TaskStepDTOCopyWith<$Res> {
  factory _$$TaskStepDTOImplCopyWith(
    _$TaskStepDTOImpl value,
    $Res Function(_$TaskStepDTOImpl) then,
  ) = __$$TaskStepDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String state, String type});
}

/// @nodoc
class __$$TaskStepDTOImplCopyWithImpl<$Res>
    extends _$TaskStepDTOCopyWithImpl<$Res, _$TaskStepDTOImpl>
    implements _$$TaskStepDTOImplCopyWith<$Res> {
  __$$TaskStepDTOImplCopyWithImpl(
    _$TaskStepDTOImpl _value,
    $Res Function(_$TaskStepDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskStepDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? state = null, Object? type = null}) {
    return _then(
      _$TaskStepDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskStepDTOImpl implements _TaskStepDTO {
  const _$TaskStepDTOImpl({
    required this.id,
    required this.state,
    required this.type,
  });

  factory _$TaskStepDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskStepDTOImplFromJson(json);

  /// Identificador del paso.
  @override
  final String id;

  /// Estado del paso.
  @override
  final String state;

  /// Tipo del paso.
  @override
  final String type;

  @override
  String toString() {
    return 'TaskStepDTO(id: $id, state: $state, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStepDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, type);

  /// Create a copy of TaskStepDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStepDTOImplCopyWith<_$TaskStepDTOImpl> get copyWith =>
      __$$TaskStepDTOImplCopyWithImpl<_$TaskStepDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskStepDTOImplToJson(this);
  }
}

abstract class _TaskStepDTO implements TaskStepDTO {
  const factory _TaskStepDTO({
    required final String id,
    required final String state,
    required final String type,
  }) = _$TaskStepDTOImpl;

  factory _TaskStepDTO.fromJson(Map<String, dynamic> json) =
      _$TaskStepDTOImpl.fromJson;

  /// Identificador del paso.
  @override
  String get id;

  /// Estado del paso.
  @override
  String get state;

  /// Tipo del paso.
  @override
  String get type;

  /// Create a copy of TaskStepDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStepDTOImplCopyWith<_$TaskStepDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalDataDTO _$ExternalDataDTOFromJson(Map<String, dynamic> json) {
  return _ExternalDataDTO.fromJson(json);
}

/// @nodoc
mixin _$ExternalDataDTO {
  /// Datos del webhook.
  ExternalKeyDTO get webhook => throw _privateConstructorUsedError;

  /// Datos del backoffice.
  ExternalKeyDTO get backoffice => throw _privateConstructorUsedError;

  /// Serializes this ExternalDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalDataDTOCopyWith<ExternalDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalDataDTOCopyWith<$Res> {
  factory $ExternalDataDTOCopyWith(
    ExternalDataDTO value,
    $Res Function(ExternalDataDTO) then,
  ) = _$ExternalDataDTOCopyWithImpl<$Res, ExternalDataDTO>;
  @useResult
  $Res call({ExternalKeyDTO webhook, ExternalKeyDTO backoffice});

  $ExternalKeyDTOCopyWith<$Res> get webhook;
  $ExternalKeyDTOCopyWith<$Res> get backoffice;
}

/// @nodoc
class _$ExternalDataDTOCopyWithImpl<$Res, $Val extends ExternalDataDTO>
    implements $ExternalDataDTOCopyWith<$Res> {
  _$ExternalDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? webhook = null, Object? backoffice = null}) {
    return _then(
      _value.copyWith(
            webhook:
                null == webhook
                    ? _value.webhook
                    : webhook // ignore: cast_nullable_to_non_nullable
                        as ExternalKeyDTO,
            backoffice:
                null == backoffice
                    ? _value.backoffice
                    : backoffice // ignore: cast_nullable_to_non_nullable
                        as ExternalKeyDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalKeyDTOCopyWith<$Res> get webhook {
    return $ExternalKeyDTOCopyWith<$Res>(_value.webhook, (value) {
      return _then(_value.copyWith(webhook: value) as $Val);
    });
  }

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalKeyDTOCopyWith<$Res> get backoffice {
    return $ExternalKeyDTOCopyWith<$Res>(_value.backoffice, (value) {
      return _then(_value.copyWith(backoffice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExternalDataDTOImplCopyWith<$Res>
    implements $ExternalDataDTOCopyWith<$Res> {
  factory _$$ExternalDataDTOImplCopyWith(
    _$ExternalDataDTOImpl value,
    $Res Function(_$ExternalDataDTOImpl) then,
  ) = __$$ExternalDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExternalKeyDTO webhook, ExternalKeyDTO backoffice});

  @override
  $ExternalKeyDTOCopyWith<$Res> get webhook;
  @override
  $ExternalKeyDTOCopyWith<$Res> get backoffice;
}

/// @nodoc
class __$$ExternalDataDTOImplCopyWithImpl<$Res>
    extends _$ExternalDataDTOCopyWithImpl<$Res, _$ExternalDataDTOImpl>
    implements _$$ExternalDataDTOImplCopyWith<$Res> {
  __$$ExternalDataDTOImplCopyWithImpl(
    _$ExternalDataDTOImpl _value,
    $Res Function(_$ExternalDataDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? webhook = null, Object? backoffice = null}) {
    return _then(
      _$ExternalDataDTOImpl(
        webhook:
            null == webhook
                ? _value.webhook
                : webhook // ignore: cast_nullable_to_non_nullable
                    as ExternalKeyDTO,
        backoffice:
            null == backoffice
                ? _value.backoffice
                : backoffice // ignore: cast_nullable_to_non_nullable
                    as ExternalKeyDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalDataDTOImpl implements _ExternalDataDTO {
  const _$ExternalDataDTOImpl({
    required this.webhook,
    required this.backoffice,
  });

  factory _$ExternalDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalDataDTOImplFromJson(json);

  /// Datos del webhook.
  @override
  final ExternalKeyDTO webhook;

  /// Datos del backoffice.
  @override
  final ExternalKeyDTO backoffice;

  @override
  String toString() {
    return 'ExternalDataDTO(webhook: $webhook, backoffice: $backoffice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalDataDTOImpl &&
            (identical(other.webhook, webhook) || other.webhook == webhook) &&
            (identical(other.backoffice, backoffice) ||
                other.backoffice == backoffice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, webhook, backoffice);

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalDataDTOImplCopyWith<_$ExternalDataDTOImpl> get copyWith =>
      __$$ExternalDataDTOImplCopyWithImpl<_$ExternalDataDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalDataDTOImplToJson(this);
  }
}

abstract class _ExternalDataDTO implements ExternalDataDTO {
  const factory _ExternalDataDTO({
    required final ExternalKeyDTO webhook,
    required final ExternalKeyDTO backoffice,
  }) = _$ExternalDataDTOImpl;

  factory _ExternalDataDTO.fromJson(Map<String, dynamic> json) =
      _$ExternalDataDTOImpl.fromJson;

  /// Datos del webhook.
  @override
  ExternalKeyDTO get webhook;

  /// Datos del backoffice.
  @override
  ExternalKeyDTO get backoffice;

  /// Create a copy of ExternalDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalDataDTOImplCopyWith<_$ExternalDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalKeyDTO _$ExternalKeyDTOFromJson(Map<String, dynamic> json) {
  return _ExternalKeyDTO.fromJson(json);
}

/// @nodoc
mixin _$ExternalKeyDTO {
  /// Valor de la clave.
  String get key => throw _privateConstructorUsedError;

  /// Serializes this ExternalKeyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalKeyDTOCopyWith<ExternalKeyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalKeyDTOCopyWith<$Res> {
  factory $ExternalKeyDTOCopyWith(
    ExternalKeyDTO value,
    $Res Function(ExternalKeyDTO) then,
  ) = _$ExternalKeyDTOCopyWithImpl<$Res, ExternalKeyDTO>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$ExternalKeyDTOCopyWithImpl<$Res, $Val extends ExternalKeyDTO>
    implements $ExternalKeyDTOCopyWith<$Res> {
  _$ExternalKeyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null}) {
    return _then(
      _value.copyWith(
            key:
                null == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExternalKeyDTOImplCopyWith<$Res>
    implements $ExternalKeyDTOCopyWith<$Res> {
  factory _$$ExternalKeyDTOImplCopyWith(
    _$ExternalKeyDTOImpl value,
    $Res Function(_$ExternalKeyDTOImpl) then,
  ) = __$$ExternalKeyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$ExternalKeyDTOImplCopyWithImpl<$Res>
    extends _$ExternalKeyDTOCopyWithImpl<$Res, _$ExternalKeyDTOImpl>
    implements _$$ExternalKeyDTOImplCopyWith<$Res> {
  __$$ExternalKeyDTOImplCopyWithImpl(
    _$ExternalKeyDTOImpl _value,
    $Res Function(_$ExternalKeyDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExternalKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null}) {
    return _then(
      _$ExternalKeyDTOImpl(
        key:
            null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalKeyDTOImpl implements _ExternalKeyDTO {
  const _$ExternalKeyDTOImpl({required this.key});

  factory _$ExternalKeyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalKeyDTOImplFromJson(json);

  /// Valor de la clave.
  @override
  final String key;

  @override
  String toString() {
    return 'ExternalKeyDTO(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalKeyDTOImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of ExternalKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalKeyDTOImplCopyWith<_$ExternalKeyDTOImpl> get copyWith =>
      __$$ExternalKeyDTOImplCopyWithImpl<_$ExternalKeyDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalKeyDTOImplToJson(this);
  }
}

abstract class _ExternalKeyDTO implements ExternalKeyDTO {
  const factory _ExternalKeyDTO({required final String key}) =
      _$ExternalKeyDTOImpl;

  factory _ExternalKeyDTO.fromJson(Map<String, dynamic> json) =
      _$ExternalKeyDTOImpl.fromJson;

  /// Valor de la clave.
  @override
  String get key;

  /// Create a copy of ExternalKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalKeyDTOImplCopyWith<_$ExternalKeyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
