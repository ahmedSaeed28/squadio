import 'package:get/get.dart';
import '../data/api/api_service.dart';
import '../data/api/api_service_handler.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(APiServiceHandler() as APiService);
  }
}
