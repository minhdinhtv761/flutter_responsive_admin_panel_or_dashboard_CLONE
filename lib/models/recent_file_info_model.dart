class RecentFileInfoModel {
  final String? svgAsset;
  final String? title;
  final String? date;
  final String? size;

  const RecentFileInfoModel(
    this.svgAsset,
    this.title,
    this.date,
    this.size,
  );
}

List<RecentFileInfoModel> recentFileInfoList = <RecentFileInfoModel>[
  RecentFileInfoModel(
    'assets/icons/xd_file.svg',
    'XD File',
    '01-03-2021',
    '3.5mb',
  ),
  RecentFileInfoModel(
    'assets/icons/Figma_file.svg',
    'Figma File',
    '27-02-2021',
    '19.0mb',
  ),
  RecentFileInfoModel(
    'assets/icons/doc_file.svg',
    'Document',
    '23-02-2021',
    '32.5mb',
  ),
  RecentFileInfoModel(
    'assets/icons/sound_file.svg',
    'Sound File',
    '21-02-2021',
    '3.5mb',
  ),
  RecentFileInfoModel(
    'assets/icons/media_file.svg',
    'Media File',
    '23-02-2021',
    '2.5gb',
  ),
  RecentFileInfoModel(
    'assets/icons/pdf_file.svg',
    'Sales PDF',
    '25-02-2021',
    '3.5mb',
  ),
  RecentFileInfoModel(
    'assets/icons/excle_file.svg',
    'Excel File',
    '25-02-2021',
    '34.5mb',
  ),
];
