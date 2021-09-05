import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'recent_file_data_table.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const RecentFilesDataTable(),
        ],
      ),
    );
  }
}