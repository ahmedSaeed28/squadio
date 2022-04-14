import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'person_item.dart';
import 'package:squadio/data/model/person.dart';

class PersonsGrid extends StatelessWidget  {

  final Function onPress;
  final PagingController<int, Person> pagingController;
  const PersonsGrid({Key? key, required this.onPress,
    required this.pagingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedGridView(
      pagingController: pagingController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      builderDelegate: PagedChildBuilderDelegate<Person>(
        itemBuilder: (context, item, index) => Padding(
          padding: const EdgeInsets.all(2),
          child: InkWell(
            onTap: () => onPress(item),
            child: PersonItem(
              key: Key(item.id.toString()),
              person: item,
            ),
          ),
        ),
      ),
    );
  }
}
