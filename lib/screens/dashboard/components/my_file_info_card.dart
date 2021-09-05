import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/my_files_info_model.dart';

class MyFileInfoCard extends StatelessWidget {
  final MyFileInfoModel info;
  const MyFileInfoCard({
    Key? key,
    required this.info,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SvgPicture.asset(info.svgAsset!),
              ),
              IconButton(
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            height: 5.0,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: info.color!.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth * info.percentage! * 0.01,
                height: 5.0,
                decoration: BoxDecoration(
                  color: info.color!,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${info.fileCount!} Files',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ),
              Text(
                '${info.storage!}GB',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}