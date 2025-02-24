import '../../../data/repository/suggested_texts/suggested_texts_repository.dart';

class SaveSuggestedEmailUseCase {
  SaveSuggestedEmailUseCase(this._repository);
  final SuggestedTextRepository _repository;

  Future<void> call(String email) async {
    await _repository.saveSuggestedEmail(email);
  }
}
