import 'package:flutter_test/flutter_test.dart';
import 'package:msibnf/counter.dart';

void main() {
  test('Test Counter', () async {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
}
