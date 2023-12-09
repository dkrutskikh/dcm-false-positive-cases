import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('example test', () {
    final imap = IMap(const {'key': 'value'});
    const imapConst = IMapConst({'key': 'value'});

    expect(imap, containsPair('key', 'value'));

    expect(imapConst, containsPair('key', 'value'));
  });
}
