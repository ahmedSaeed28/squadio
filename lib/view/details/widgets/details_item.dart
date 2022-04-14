import 'package:flutter/material.dart';
import 'package:squadio/data/model/person.dart';

class DetailsItem extends StatelessWidget{

  final Person person;
  const DetailsItem({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 4// Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Image.network(
            person.thumbnailUrl,
            width: 150,
            height: 150,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    person.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  flex: 1,
                  child: Text(
                    person.department,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  flex: 1,
                  child: Text(
                    'Gender: ${person.gender==2 ? 'Male' : 'Female'}',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  flex: 1,
                  child: Text(
                    person.adult ? 'For adults only' : 'For everyone',
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}
