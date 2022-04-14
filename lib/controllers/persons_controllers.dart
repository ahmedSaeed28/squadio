import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:squadio/data/model/person.dart';
import 'package:squadio/data/repository/persons_repository.dart';

class PersonsController extends GetxController {

  final PersonsRepository personsRepository;
  final PagingController<int, Person> pagingController =
    PagingController(firstPageKey: 1);
  PersonsController(this.personsRepository){
    pagingController.addPageRequestListener((pageKey) {
      getPersons(pageKey);
    });
  }

  void getPersons(int page) async {
    await personsRepository.getPersons(page).then((data){
      pagingController.appendPage(data, page++);
    }, onError: (error) {
      pagingController.appendPage([], page);
    });
  }
}
