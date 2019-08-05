import 'package:flutter/material.dart';

alert(BuildContext context, String title, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Ok'),
            )
          ],
        );
      });
}