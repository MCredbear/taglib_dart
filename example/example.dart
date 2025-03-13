import 'dart:io';
import 'package:taglib_dart/taglib_dart.dart';

void main() {
  final file = File("test.flac");
  final bytes = file.readAsBytesSync();

  final audioFile = AudioFile(bytes, Format.flac);
  final title = audioFile.getTitle();
  print(title);
  audioFile.setTitle("New Title");
  final newBytes = audioFile.save();

  file.writeAsBytesSync(newBytes);
}
