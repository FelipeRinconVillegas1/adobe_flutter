import '../../datasource/suggested_texts/suggested_texts_datasource.dart';

abstract class SuggestedTextRepository {
  Future<void> saveSuggestedEmail(String email);
  Future<List<String>> getSuggestedEmails();
}

class SuggestedTextRepositoryImpl extends SuggestedTextRepository {
  SuggestedTextRepositoryImpl(this.suggestedTextDataSource);

  final SuggestedTextsDataSource suggestedTextDataSource;

  @override
  Future<List<String>> getSuggestedEmails() async {
    return await suggestedTextDataSource.getSuggestedEmails();
  }

  @override
  Future<void> saveSuggestedEmail(String email) async {
    await suggestedTextDataSource.saveSuggestedEmail(email);
  }
}
