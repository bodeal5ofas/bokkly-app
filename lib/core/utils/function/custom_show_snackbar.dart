import 'package:flutter/material.dart';

void customShowSnakBar(
    {required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
