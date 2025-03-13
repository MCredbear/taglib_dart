Pure Dart reimplementation of TagLib

## Features

Read / Write Audio Tag (Currently only support Flac and Mp3, you can tell me what you need in issues)

## Usage

```dart
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
```

## Completed Application Example

[Music Tools Flutter](https://github.com/MCredbear/music_tools_flutter/blob/master/lib/editor_page/editor_page.dart)
