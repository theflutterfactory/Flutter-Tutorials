import 'package:CWCFlutter/model/framework.dart';
import 'package:CWCFlutter/repository/framework_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class FrameworkController extends GetxController {
  List<Framework> frameworks = [];
  Framework selectedFramework;
  FrameworkRepository repository = FrameworkRepository();

  static FrameworkController get to => Get.find<FrameworkController>();

  fetchAllFrameworks() async {
    frameworks = await repository.fetchAllFrameworks();
    update();
  }

  // Future<List<Framework>> fetchFramework(String id) async {
  //   return await repository.fetchFramework(id);
  // }

  addFramework(Framework framework) async {
    frameworks.add(await repository.addFramework(framework));
    update();
  }

  deleteFramework(String objectId) async {
    Response response = await repository.deleteFramework(objectId);
    if (response.data['code'] == null) {
      frameworks.removeWhere((e) => e.objectId == objectId);
      update();
    }
  }

  updateFramework(String objectId, Framework framework) async {
    Response response = await repository.updateFramework(objectId, framework);
    if (response.data['code'] == null) {
      int index = frameworks.indexWhere((e) => e.objectId == objectId);
      frameworks[index] = Framework.fromJson(response.data);
      update();
    }
  }

  uploadImage(String path, String fileName) async {
    Response response = await repository.uploadImage(path, fileName);
  }

  setSelected(Framework framework) {
    selectedFramework = framework;
    update();
  }

  clearSelected() {
    selectedFramework = null;
    update();
  }
}
