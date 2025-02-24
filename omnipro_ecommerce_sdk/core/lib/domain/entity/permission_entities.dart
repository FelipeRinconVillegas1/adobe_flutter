
enum PermissionTypesEntity {
  camera,
  audio,
  microphone,
  speech,
  bluetooth;

}

enum PermissionStatusEntity {
  granted,
  denied,
  restricted,
  limited,
  permanentlyDenied;

  bool isGranted() {
    return this == PermissionStatusEntity.granted;
  }
}
