import 'package:pixabay_image_midle/data/api/pixabay_api.dart';
import 'package:pixabay_image_midle/data/mapper/photo_mapper.dart';
import 'package:pixabay_image_midle/domain/model/photo.dart';
import 'package:pixabay_image_midle/domain/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final resultDto = await _api.getImages(query);

    if (resultDto.hits == null) {
      return [];
    }
    return resultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
