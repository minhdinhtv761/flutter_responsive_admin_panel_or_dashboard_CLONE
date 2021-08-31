import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/dashboard_header.dart';
import 'components/my_files.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: <Widget>[
            DashboardHeader(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    children: <Widget>[
                      MyFiles(),
                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 500.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}