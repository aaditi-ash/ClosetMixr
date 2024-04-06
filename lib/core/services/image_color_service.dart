import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:palette_generator/palette_generator.dart';

class ImageColorService {
  final ImagePicker _picker = ImagePicker();

  Future<String> pickImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      return photo.path;
    }
    throw Exception('No image selected');
  }

  Future<PaletteGenerator> generatePalette(String imagePath) async {
    return await PaletteGenerator.fromImageProvider(FileImage(File(imagePath)));
  }
}
