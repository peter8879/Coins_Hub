abstract class DataBaseService{
  Future<dynamic> getData({required String path,String? id, Map<String, dynamic>? queryParameters});
}