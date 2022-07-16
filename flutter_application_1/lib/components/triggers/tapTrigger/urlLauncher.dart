import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatelessWidget {
  // https://flutter.dev
  // tel:+1-555-010-999
  // sms:5550101234
  // file:/home
  final String url;
  final Widget child;

  const UrlLauncher({Key? key, required this.url, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){_launchUrl(url);},
      child: child
    );
  }

  _launchUrl(url) {
    launchUrl(Uri.parse(url));
  }
}