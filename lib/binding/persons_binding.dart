import 'package:get/get.dart';
import 'package:squadio/controllers/persons_controllers.dart';
import 'package:squadio/data/repository/persons_repository.dart';

class PersonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PersonsRepository(Get.find()));
    Get.put(PersonsController(Get.find()));
  }
}
