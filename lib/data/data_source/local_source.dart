abstract class LocalSource<T> {
  Future<void> save({
    required String key,
    required T value,
  });

  Future<T?> get({
    required String key,
  });

  Future<List<T>> getAll();

  Future<void> clear();

  Future<void> delete({required String key});
}
