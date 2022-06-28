import 'package:circadia/controllers/firebase_controller.dart';
import 'package:get/get.dart';

class InstanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseController());
  }
}
