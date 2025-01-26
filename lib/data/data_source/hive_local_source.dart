import 'dart:async';

import 'package:hive/hive.dart';
import 'package:myrecipeapp/data/data_source/local_source.dart';

class HiveLocalSource<T> implements LocalSource<T> {
  final String boxName;

  HiveLocalSource(this.boxName) {
    _openBox();
  }

  late final Box<T> _box;
  Completer<void>? _initializationCompleter;

  Future<void> _openBox() async {
    if (_initializationCompleter != null) {
      // If initialization is already in progress, wait for it to complete.
      await _initializationCompleter!.future;
      return;
    }
    // Start initialization.
    _initializationCompleter = Completer<void>();

    try {
      if (!Hive.isBoxOpen(boxName)) {
        _box = await Hive.openBox<T>(boxName);
      } else {
        _box = Hive.box<T>(boxName);
      }
      _initializationCompleter!.complete();
    } catch (e) {
      // If an error occurs, complete with an error.
      _initializationCompleter!.completeError(e);
      rethrow;
    }
  }

  @override
  Future<void> clear() async {
    await _openBox();
    await _box.clear();
  }

  @override
  Future<void> delete({required String key}) async {
    await _openBox();
    await _box.delete(key);
  }

  @override
  Future<T?> get({required String key}) async {
    await _openBox();
    return _box.get(key);
  }

  @override
  Future<List<T>> getAll() async {
    await _openBox();
    return _box.values.toList();
  }

  @override
  Future<void> save({required String key, required T value}) async {
    await _openBox();
    await _box.put(key, value);
  }
}
