import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:myrecipeapp/data/data_source/local_source.dart';

class HiveLocalSource<T> implements LocalSource<T> {
  final String boxName;

  HiveLocalSource(this.boxName) {
    Future.delayed(Duration.zero, () async {
      await _openBox();
    });
  }

  late final Box<T> _box;

  Future<void> _openBox() async {
    if (!Hive.isBoxOpen(boxName)) {
      _box = await Hive.openBox<T>(boxName);
    }
    _box = Hive.box<T>(boxName);
  }

  @override
  Future<void> clear() async {
    try {
      _box.clear();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> delete({required String key}) async {
    try {
      await _box.delete(key);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T?> get({required String key}) async {
    try {
      final value = _box.get(key);
      return value;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<T>> getAll() async {
    try {
      return _box.values.toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> save({required String key, required T value}) async {
    try {
      await _box.put(key, value);
    } catch (e) {
      log(e.toString());
    }
  }
}
