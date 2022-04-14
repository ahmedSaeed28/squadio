import 'package:get/get_connect/http/src/response/response.dart';
import 'package:squadio/data/model/person.dart';

abstract class APiService{
  Future<Response<List<Person>>> getPersons(int page);
}
