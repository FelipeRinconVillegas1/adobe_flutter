import 'package:core/domain/entity/config/store_config_entity.dart';

import '../../dto/config/store_config_dto.fr.dart';

extension MapperStoreConfigDTO on StoreConfigDTO {
  StoreConfigEntity toDomain() => StoreConfigEntity(
        cybersourceAllowedCcTypes: cybersourceAllowedCcTypes.isNotEmpty ? cybersourceAllowedCcTypes.split(",").toList() : [],
      );
}
