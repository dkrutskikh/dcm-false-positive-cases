import 'package:diffutil_dart/diffutil.dart';
import 'package:flutter/widgets.dart';

DataDiffUpdate<Key>? foo() {
  final diffUpdateList = calculateListDiff<Key>(
    <Key>[],
    <Key>[],
    detectMoves: false,
  ).getUpdatesWithData();

  for (final update in diffUpdateList) {
    if (update is DataInsert<Key>) {
      return update;
    } else if (update is DataRemove<Key>) {
      return update;
    }
  }

  return null;
}
