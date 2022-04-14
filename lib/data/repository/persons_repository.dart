import 'package:squadio/data/model/person.dart';
import '../api/api_service.dart';

class PersonsRepository{

  final APiService apiService;

  PersonsRepository(this.apiService);

  Future<List<Person>> getPersons(int page) async{
    final response = await apiService.getPersons(page);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body!;
    }
  }
}
