import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class WSSubscriber<T> {
  final T data;

  WSSubscriber(this.data);
}

class WSService {
  void addSubscriber<T extends Object>(WSSubscriber<T> subscriber) {}
}

class WSServiceMock extends Mock implements WSService {}

void main() {
  test('example test', () {
      final service = WSServiceMock();

      when(() => service.addSubscriber(any<WSSubscriber<int>>()));

      verify(
        () => service.addSubscriber(any<WSSubscriber<int>>()),
      ).called(1);
    }
  );
}
