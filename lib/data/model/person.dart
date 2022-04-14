class Person{
  final int id;
  final String name;
  final int gender;
  final bool adult;
  final String thumbnailUrl;
  final String department;
  final List<String> images;

  Person.fromMap(Map<String, dynamic> map, this.images) :
      id = map['id'],
      name = map['name'],
      gender = map['gender'],
      adult = map['adult'],
      thumbnailUrl = 'https://image.tmdb.org/t/p/w500/' + map['profile_path'],
      department = map['known_for_department'];

  static List<String> getImages(dynamic json) =>
      (json['known_for'] as List<dynamic>).map((value) =>
        'https://image.tmdb.org/t/p/w500/' + value['poster_path'].toString()).toList();

  static List<Person> fromListJson(dynamic json) =>
      (json['results'] as List<dynamic>).map((value) => Person.fromMap(value, getImages(value))).toList();
}
