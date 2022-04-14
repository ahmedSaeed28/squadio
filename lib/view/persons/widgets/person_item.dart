import 'package:flutter/material.dart';
import 'package:squadio/data/model/person.dart';

class PersonItem extends StatelessWidget{

  final Person person;
  const PersonItem({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 4// Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 4,
            child: Image.network(person.thumbnailUrl)
          ),
          Flexible(
            flex: 1,
            child: Text(
              person.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              person.department,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ]
      ),
    );
  }
}
