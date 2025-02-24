import '../../../data/repository/suggested_texts/suggested_texts_repository.dart';

class GetSuggestedEmailsUseCase {
  GetSuggestedEmailsUseCase(this._repository);
  final SuggestedTextRepository _repository;

  Future<List<String>> call() async {
    return await _repository.getSuggestedEmails();
  }
}
