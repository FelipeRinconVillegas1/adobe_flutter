import 'dart:convert';

import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';

abstract class SuggestedTextsDataSource {
  Future<void> saveSuggestedEmail(String email);
  Future<List<String>> getSuggestedEmails();
}

class SuggestedTextsDataSourceImpl implements SuggestedTextsDataSource {
  SuggestedTextsDataSourceImpl(this._secureStorageDatasource);

  final SecureStorageDatasource _secureStorageDatasource;

  @override
  Future<List<String>> getSuggestedEmails() async {
    if (await _secureStorageDatasource.existData(KeySecureStorage.suggestedEmails)) {
      final listEmail = jsonDecode(await _secureStorageDatasource.getData(KeySecureStorage.suggestedEmails));
      return listEmail.cast<String>();
    } else {
      return [];
    }
  }

  @override
  Future<void> saveSuggestedEmail(String email) async {
    int limit = 3;
    if (await _secureStorageDatasource.existData(KeySecureStorage.suggestedEmails)) {
      List<String> emails =
          jsonDecode(await _secureStorageDatasource.getData(KeySecureStorage.suggestedEmails)).cast<String>();
      if (emails.contains(email)) {
        emails.remove(email);
        emails.insert(0, email);
        if (emails.length > limit) {
          emails.removeLast();
        }
        await _secureStorageDatasource.saveData(KeySecureStorage.suggestedEmails, jsonEncode(emails));
      } else {
        emails.insert(0, email);
        if (emails.length > limit) {
          emails.removeLast();
        }
        await _secureStorageDatasource.saveData(KeySecureStorage.suggestedEmails, jsonEncode(emails));
      }
    } else {
      await _secureStorageDatasource.saveData(KeySecureStorage.suggestedEmails, jsonEncode([email]));
    }
  }
}
