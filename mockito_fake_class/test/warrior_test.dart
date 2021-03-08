import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_fake_class/warrior.dart';

class MockWarrior extends Mock implements Warrior {} // its a fake class

void main() {
  MockWarrior warrior = MockWarrior();
  Warrior w = Warrior();
  test("Warirror rest bloc", () {
    warrior.rest();
    verify(warrior.rest())
        .called(1); // counting that started method by the class
  });

  test("Warrior all bloc", () {
    warrior.rest();
    warrior.training();
    verifyInOrder([warrior.rest(), warrior.training()]);
  });

  test("Null Demo", () {
    expect(w.name, equals("no name"));
    expect(warrior.name, isNull);
  });

  test("fake return data", () {
    when(warrior.name).thenReturn("no name");
    expect(warrior.name, equals("no name"));
  });

  test("Throw another data", () {
    when(warrior.rest()).thenThrow(Exception("Can't Sleep"));
    expect(() => warrior.rest(), throwsException);
  });

  test("then answer (for async)", () async {
    when(warrior.training()).thenAnswer((_) => Future.value(true));
    bool results = await warrior.training();
    expect(results, isTrue);
  });
}
