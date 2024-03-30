import 'package:uuid/uuid.dart';
import 'dart:io';

var uuid = const Uuid();

class Place {
  final String id;
  final String name;
  final File imageFile;

  Place({
    required this.name,
    required this.imageFile,
  }) : id = uuid.v4();
}
