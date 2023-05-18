class PngAssets {
  const PngAssets._();
  static String get math_5 => 'math_5'.png;
  static String get shimi_3 => 'shimi_3'.png;
  static String get lang_5 => 'lang_5'.png;
  static String get bio_3 => 'bio_3'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
}
