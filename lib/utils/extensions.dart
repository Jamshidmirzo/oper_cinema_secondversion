import 'package:flutter/material.dart';

extension Integers on int {
  width() {
    return SizedBox(
      width: toDouble(),
    );
  }
  height() {
    return SizedBox(
      height: toDouble(),
    );
  }
}
