import 'package:flutter/material.dart';

class StorageDetailModel {
  final String? svgAsset;
  final String? title;
  final int? fileCount;
  final double? storage;
  final Color? color;

  const StorageDetailModel(
    this.svgAsset,
    this.title,
    this.fileCount,
    this.storage,
    this.color,
  );
}

List<StorageDetailModel> storageDetailList = const <StorageDetailModel>[
  StorageDetailModel(
    'assets/icons/documents.svg',
    'Documents Files',
    1328,
    1.9,
    Color(0xFF2697FF),
  ),
  StorageDetailModel(
    'assets/icons/media_file.svg',
    'Media Files',
    1328,
    15.13,
    Color(0xFFFFB443),
  ),
  StorageDetailModel(
    'assets/icons/folder.svg',
    'Other Files',
    1328,
    5.3,
    Color(0xFFFFCF26),
  ),
  StorageDetailModel(
    'assets/icons/unknown.svg',
    'Unknown',
    140,
    1.0,
    Color(0xFF2697FF),
  ),
];
