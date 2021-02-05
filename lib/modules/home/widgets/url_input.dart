import 'package:flutter/material.dart';

enum _Method {
  GET,
  POST,
  PUT,
  PATCH,
  DELETE,
}

class UrlInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UrlInputState();
}

class _UrlInputState extends State<UrlInput> {
  _Method method = _Method.GET;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Theme.of(context).backgroundColor,
            child: Text(
              method.toString().split('.').last,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
      ],
    );
  }
}
