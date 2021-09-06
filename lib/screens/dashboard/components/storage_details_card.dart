import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/storage_detail_model.dart';

class StorageDetailsCard extends StatelessWidget {
  final StorageDetailModel? info;

  const StorageDetailsCard({
    Key? key,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: primaryColor.withOpacity(0.2),
          width: 2.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20.0,
            height: 20.0,
            child: SvgPicture.asset(info!.svgAsset!),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(info!.title!),
                  const SizedBox(height: defaultPadding * 0.2),
                  Text(
                    '${info!.fileCount} Files',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text('${info!.storage!}GB'),
        ],
      ),
    );
  }
}