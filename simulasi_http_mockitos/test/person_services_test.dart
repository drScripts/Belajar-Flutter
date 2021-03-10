import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simulasi_http_mockitos/person.dart';
import 'package:simulasi_http_mockitos/person_services.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();

  test("Get Data Test", () async {
    String id = "1";
    when(client.get(Uri.parse("../person/" + id)))
        .thenAnswer((_) async => Future.value(http.Response('''
            {
              "id": $id,
              "name": "Dodi",
              "age": 20
            }
            ''', 200)));

    Person persons = await PersonServices.getPersonById(id, client);
    expect(persons, Person(id: 1, name: "Dodi", age: 20));
  });
  test("Get Data Test (erorr)", () async {
    String id = "1";
    when(client.get(Uri.parse("../person/" + id)))
        .thenAnswer((_) async => Future.value(http.Response('''
            {
              "Message": "Tidak ada Akses"
            }
            ''', 403)));
    expect(PersonServices.getPersonById(id, client), throwsException);
  });
}
