import 'package:flutter/material.dart';

ButtonStyle loadingButtonStyle(BuildContext context) {
  return ButtonStyle(
    shape: WidgetStateProperty.all<CircleBorder>(const CircleBorder()),
  );
}
