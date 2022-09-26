
import 'heic_jpg_platform_interface.dart';
import 'dart:io';
import 'package:path/path.dart' as p;

class HeicJpg {
  Future<String?> convert(String inPath) async {

    if(Platform.isIOS && p.extension(inPath).toLowerCase() == ".heic"){
      return HeicJpgPlatform.instance.convert(inPath);
    }

    return null;
  }
}
