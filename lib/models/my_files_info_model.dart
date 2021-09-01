import 'package:flutter/material.dart';

class MyFilesInfoModel {
  final String? svgAsset;
  final String? title;
  final int? fileCount;
  final double? percentage;
  final double? storage;
  final Color? color;

  const MyFilesInfoModel(
    this.svgAsset,
    this.title,
    this.fileCount,
    this.percentage,
    this.storage,
    this.color,
  );
}

const List<MyFilesInfoModel> myFileList = <MyFilesInfoModel>[
  MyFilesInfoModel(
    'assets/icons/documents',
    'Documents',
    1328,
    35.0,
    1.9,
    Color(0xFF2697FF),
  ),
  MyFilesInfoModel(
    'assets/icons/google_drive.svg',
    'Google Drive',
    1328,
    35.0,
    2.9,
    Color(0xFFFFA113),
  ),
  MyFilesInfoModel(
    'assets/icons/one_drive.svg',
    'One Drive',
    1328,
    10.0,
    1.0,
    Color(0xFFA4CDFF),
  ),
  MyFilesInfoModel(
    'assets/icons/drop_box.svg',
    'Drop Box',
    5328,
    80.0,
    7.3,
    Color(0xFFA4CDFF),
  ),
];
