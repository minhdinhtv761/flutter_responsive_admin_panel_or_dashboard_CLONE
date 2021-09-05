import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/recent_file_info_model.dart';

class RecentFilesDataTable extends StatelessWidget {
  const RecentFilesDataTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'File Name',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Date',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Size',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
        rows: List<DataRow>.generate(
          recentFileInfoList.length,
          (index) => DataRow(
            cells: <DataCell>[
              DataCell(
                Row(
                  children: <Widget>[
                    SvgPicture.asset(recentFileInfoList[index].svgAsset!),
                    SizedBox(width: defaultPadding),
                    Text(recentFileInfoList[index].title!),
                  ],
                ),
              ),
              DataCell(
                Text('${recentFileInfoList[index].date!}'),
              ),
              DataCell(
                Text('${recentFileInfoList[index].size!}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
