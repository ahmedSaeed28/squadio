import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squadio/controllers/persons_controllers.dart';
import 'package:squadio/data/model/person.dart';
import 'package:squadio/routes/routes.dart';
import 'package:squadio/view/details/widgets/details_item.dart';

class DetailsScreen extends GetView<PersonsController> {

  final Person person = Get.arguments as Person;
  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              DetailsItem(
                person: person
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10, right: 10
                ),
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xFF0d253f),
                    size: 30,
                  ),
                  onPressed: () => Get.back(),
                ),
              )
            ],
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: person.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.preview,
                      arguments: person.images[index]),
                  child: Image.network(
                    person.images[index],
                    width: 90,
                    height: 90,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
