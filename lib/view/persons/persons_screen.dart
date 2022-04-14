import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squadio/controllers/persons_controllers.dart';
import '../../routes/routes.dart';
import 'widgets/persons_grid.dart';

class PersonsScreen extends GetView<PersonsController> {

  const PersonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular People'),
        centerTitle: true,
      ),
      body: PersonsGrid(
        pagingController: controller.pagingController,
        onPress: (person) => Get.toNamed(Routes.details, arguments: person)
      ),
    );
  }
}
