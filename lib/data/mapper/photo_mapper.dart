import 'package:pixabay_image_midle/data/dto/pixabay_result_dto.dart';
import 'package:pixabay_image_midle/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      views: views ?? 0,
      likes: likes ?? 0,
      webformatURL: webformatURL ?? '',
      tags: tags ?? '',
      user: user ?? '',
      userImageURL: userImageURL ?? '',
    );
  }
}
