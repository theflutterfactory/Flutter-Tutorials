import 'package:CWCFlutter/api/client.dart';
import 'package:CWCFlutter/api/frameworks_api.dart';
import 'package:CWCFlutter/model/framework.dart';
import 'package:dio/dio.dart';

class FrameworkRepository {
  Dio apiClient;
  //or Database
  //or Shared Preference, etc

  FrameworkRepository() {
    apiClient = client();
    //initialize other sources if needed
  }

  Future<List<Framework>> fetchAllFrameworks() async {
    Response response = await fetchAll(apiClient);
    return List<Framework>.from(
      (response.data).map((json) => Framework.fromJson(json)),
    );
  }

  Future<List<Framework>> fetchFramework(String objectId) async {
    Response response = await fetch(apiClient, objectId);
    return List<Framework>.from(
      (response.data).map((json) => Framework.fromJson(json)),
    );
  }

  Future<Framework> addFramework(Framework framework) async {
    Response response = await add(apiClient, framework.toJson());
    return Framework.fromJson(response.data);
  }

  Future<Response> deleteFramework(String objectId) async {
    return await delete(apiClient, objectId);
  }

  Future<Response> updateFramework(String objectId, Framework framework) async {
    return await update(apiClient, objectId, framework.toJson());
  }
}
