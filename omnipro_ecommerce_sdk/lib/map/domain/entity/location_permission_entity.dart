enum LocationPermissionEntity {
  always("Siempre"),
  whileInUse("Permitir mientras se usa"),
  denied("Denegado"),
  deniedForever("Denegado para siempre"),
  unknown("Desconocido");

  bool isEnable() {
    switch (this) {
      case LocationPermissionEntity.always:
      case LocationPermissionEntity.whileInUse:
        return true;
      default:
        return false;
    }
  }

  const LocationPermissionEntity(this.nameEs);
  final String nameEs;
}
