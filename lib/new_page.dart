import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  const NewPage({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(title)),
    );
  }
}
