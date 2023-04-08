import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Bar {
  final String a;
  final double b;

  const Bar({
    required this.a,
    required this.b,
  });
}

class FooWidget extends StatelessWidget {
  const FooWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = Bar(
      a: context.read(),
      b: context.read(),
    );

    return SizedBox(
      width: bar.b,
    );
  }
}
