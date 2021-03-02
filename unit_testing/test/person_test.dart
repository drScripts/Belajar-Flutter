import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/person.dart';

void main() {
  Person p;
  p = Person();

  test("Person Bloc Testing", () {
    expect(p.name, equals("no name"));
    expect(p.age, equals(0));
  });
  test("Person Age Test", () {
    p.age = -5;
    expect(p.age, isPositive);
  });

  test("LuckyNumber Test", () {
    expect(
        p.luckyNumbers,
        allOf([
          hasLength(equals(3)),
          isNot(anyElement(isNegative)),
        ]));
  });
}
