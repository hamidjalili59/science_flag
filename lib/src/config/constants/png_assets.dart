class PngAssets {
  const PngAssets._();
  static String get math_5 => 'math_5'.image;
  static String get shimi_3 => 'shimi_3'.image;
  static String get astronaut => 'astronaut_logo'.png;
  static String get lang_5 => 'lang_5'.image;
  static String get bio_3 => 'bio_3'.image;
  static String get intro_1 => 'intro_1'.intro;
  static String get intro_2 => 'intro_2'.intro;
  static String get intro_3 => 'intro_3'.intro;
  static String get logoIcon => 'app_logo'.icons;
}

extension on String {
  String get image => 'assets/images/$this.png';
  String get png => 'assets/images/png/$this.png';
  String get icons => 'assets/images/icons/$this.png';
  String get intro => 'assets/images/png/intro/$this.png';
}
