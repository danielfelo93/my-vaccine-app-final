import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:my_vaccine_app/config/constants/environment.dart';

final userImageProvider = StateNotifierProvider<UserImageNotifier, File?>((ref) {
  return UserImageNotifier();
});

class UserImageNotifier extends StateNotifier<File?> {
  UserImageNotifier() : super(null);

  final ImagePicker _picker = ImagePicker();
final dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
    )
  );
  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      state = File(pickedFile.path);
    }
  }

  Future<void> uploadImage(String token) async {
    if (state == null) return;

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        state!.path,
        filename: 'profile_image.png',
        contentType: MediaType('image', 'png'),
      ),
    });

    final response = await dio.post(
      '/api/Auth/update-user-photo-profile',
      data: formData,
      options: Options(
        headers: {
          'Content-Type': 'multipart/form-data',
          'accept': '*/*',
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to upload image');
    }
  }
}
