import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../models/my_files_info_model.dart';
import '../../../constants.dart';
import 'my_file_info_card.dart';

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
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding,
                ),
              ),
              icon: const Icon(Icons.add),
              label: const Text('Add new'),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: myFileInfoList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) =>
              MyFileInfoCard(info: myFileInfoList[index]),
        ),
      ],
    );
  }
}
