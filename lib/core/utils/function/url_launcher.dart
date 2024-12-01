import 'package:bokkly_app/core/utils/function/custom_show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(
    {required BuildContext context, required String urlLink}) async {
  final Uri url = Uri.parse(urlLink);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    customShowSnakBar(context: context, message: 'cant launch :$url');
  }
}
