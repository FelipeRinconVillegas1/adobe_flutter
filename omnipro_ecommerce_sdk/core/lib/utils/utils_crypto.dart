import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

const int _lengthIV = 16;

/// Encrypts data using AES-256-CBC.
///
/// [data] is the string to encrypt.
/// Returns the encrypted string in Base64 format.
String encryptData(String data, String key) {
  final ivBytes = _generateRandomIV(_lengthIV);
  final iv = encrypt.IV(ivBytes);
  final encrypter = encrypt.Encrypter(
    encrypt.AES(encrypt.Key.fromUtf8(key), mode: encrypt.AESMode.cbc),
  );
  final encrypted = encrypter.encrypt(data, iv: iv);
  return base64Encode(iv.bytes + encrypted.bytes);
}

/// Decrypts encrypted data using AES-256-CBC.
///
/// [data] is the encrypted string in Base64 format.
/// Returns the decrypted string.
String decryptData(String data, String key) {
  final dataBytes = base64Decode(data);
  final ivBytes = dataBytes.sublist(0, _lengthIV);
  final encryptedBytes = dataBytes.sublist(_lengthIV);
  final iv = encrypt.IV(ivBytes);
  final encrypter = encrypt.Encrypter(
    encrypt.AES(encrypt.Key.fromUtf8(key), mode: encrypt.AESMode.cbc),
  );
  return encrypter.decrypt(encrypt.Encrypted(encryptedBytes), iv: iv);
}

/// Generates a random Initialization Vector (IV) of the given length.
///
/// [length] specifies the length of the IV.
/// Returns the generated IV as a list of bytes.
Uint8List _generateRandomIV(int length) {
  final random = Random.secure();
  return Uint8List.fromList(List<int>.generate(length, (_) => random.nextInt(256)));
}


String convertStringToSHA256(String data) {
  final bytes = utf8.encode(data.toLowerCase());
  final digest = sha256.convert(bytes);
  return digest.toString();
}

int? getIntFromBase64(String base64CartId) {
  final id = utf8.decode(base64.decode(base64CartId));
  return int.tryParse(id);
}
