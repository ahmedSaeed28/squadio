import 'package:get/get_connect/connect.dart';
import 'package:squadio/data/model/person.dart';
import 'api_service.dart';

class APiServiceHandler extends GetConnect implements APiService{

  final String _apiKey = '331c636c4172be6d84039f01350665ad';
  final String _language = 'en-US';

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = 'https://api.themoviedb.org/3/';
  }

  @override
  Future<Response<List<Person>>> getPersons(int page) =>
      get('person/popular?api_key=$_apiKey&language=$_language&page=1',
          decoder: Person.fromListJson);
}
