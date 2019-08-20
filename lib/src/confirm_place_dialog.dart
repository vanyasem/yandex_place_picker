import 'package:flutter/material.dart';

Widget _buildDialog(BuildContext context) {
  const String url =
    'https://static-maps.yandex.ru/1.x/'
    '?ll=37.620070,55.753630'
    '&size=450,450'
    '&z=18'
    '&l=map'
    '&pt=37.620070,55.753630,org'
    '&lang=en_US';

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(
        'Some place',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.body2,
      ),
      Text(
        'Address of that place',
        maxLines: 2,
        style: Theme.of(context).textTheme.body1,
      ),
      Image.network(url),
    ],
  );
}

void showConfirmationDialog(BuildContext context) {
  showDialog<AlertDialog>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Use this place?'), // TODO: Internalize
        content: _buildDialog(context),
        contentPadding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0),
        actions: <Widget>[
          FlatButton(
            child: const Text('CHANGE LOCATION'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
