import 'package:flutter/material.dart';
import 'package:http_client/modules/home/widgets/url_input.dart';

class RequestPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: UrlInput(),
    );
  }
}
