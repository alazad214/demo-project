import 'dart:io';
import 'package:flutter/material.dart';

class ImagePickerProvider with ChangeNotifier {
  final List<File> _images = [];

  List<File> get images => _images;

  // Add image to the list
  void addImage(File image) {
    _images.add(image);
    notifyListeners();
  }

  // Remove image from the list
  void removeImage(File image) {
    _images.remove(image);
    notifyListeners();
  }

  // Clear all images (optional for when submitting report)
  void clearImages() {
    _images.clear();
    notifyListeners();
  }
}
