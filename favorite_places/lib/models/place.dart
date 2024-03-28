import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Place {
  final String id;
  final String name;
  final String? imageUrl;

  Place({
    required this.name,
    this.imageUrl,
  }) : id = uuid.v4();
}
