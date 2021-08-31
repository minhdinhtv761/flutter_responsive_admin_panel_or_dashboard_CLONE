import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding,
                ),
              ),
              icon: Icon(Icons.add),
              label: Text('Add new'),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
