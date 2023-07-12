import 'package:pixabay_image_midle/domain/model/photo.dart';
import 'package:pixabay_image_midle/domain/repository/photo_repository.dart';

class GetTopFiveMostViewdImagesUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewdImagesUseCase(this._repository);
  Future<List<Photo>> execute(String query) async {
    final photos = await _repository.getPhotos(query);

    photos.sort((a, b) => -a.views.compareTo(b.views));
    return photos.take(10).toList();
  }
}
