import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/storage_detail_model.dart';

import '../../../constants.dart';
import 'storage_details_card.dart';
import 'storage_details_chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
            'Storage Details',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding * 2.0,
              vertical: defaultPadding,
            ),
            child: Chart(),
          ),
          Column(
            children: List.generate(
              storageDetailList.length,
              (index) => StorageDetailsCard(info: storageDetailList[index]),
            ),
          ),
        ],
      ),
    );
  }
}