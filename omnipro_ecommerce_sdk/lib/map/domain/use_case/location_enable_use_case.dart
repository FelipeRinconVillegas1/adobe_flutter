import '../../data/repository/locator_repository.dart';

class LocationEnableUseCase {
  final LocatorRepository locationRepository;

  LocationEnableUseCase(this.locationRepository);

  Future<bool> call() async {
    return await locationRepository.isLocationServiceEnabled();
  }
}
