abstract class RemoteSource {
  Future<Map<String, dynamic>> get({
    required String path,
    required Map<String, dynamic> queryParams,
  });

  Future<Map<String, dynamic>> post({
    required String path,
    required Map<String, dynamic> queryParams,
  });
}
