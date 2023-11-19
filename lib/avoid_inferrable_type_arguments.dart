import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';

final _numbers = ValueNotifier(IList<int>());
final _betsInPending = ValueNotifier(IMapOfSets<String, int>());

ValueListenable<IList<int>> get numbers => _numbers;
ValueListenable<IMapOfSets<String, int>> get betsInPending => _betsInPending;
