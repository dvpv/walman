part of 'index.dart';

abstract class BundleItem {
  String get id;

  String get title;

  DateTime get createdAt;

  DateTime get lastAccess;

  int get timesAccessed;
}
