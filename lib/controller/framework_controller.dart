import 'package:CWCFlutter/model/framework.dart';
import 'package:get/get.dart';

class FrameworkController extends GetxController {
  List<Framework> frameworks = [];
  Framework selectedFramework;

  static FrameworkController get to => Get.find<FrameworkController>();
}
