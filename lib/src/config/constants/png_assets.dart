class PngAssets {
  const PngAssets._();
  static String get logo => 'logo'.png;
  static String get bag => 'school_bag'.png;
  static String get mathNote => 'math_note'.icon;
  static String get mathNote2 => 'math_note_2'.icon;
  static String get chemistryNote1 => 'chemistry_1'.icon;
  static String get chemistryNote2 => 'chemistry_2'.icon;
  static String get chemistryNote3 => 'chemistry_3'.icon;
  static String get chemistryNote4 => 'chemistry_4'.icon;
  static String get math => 'math_1'.png;
  static String get math_2 => 'math_2'.png;
  static String get math_3 => 'math_3'.png;
  static String get math_4 => 'math_4'.png;
  static String get math_5 => 'math_5'.png;
  static String get shimi_1 => 'shimi_1'.png;
  static String get shimi_2 => 'shimi_2'.png;
  static String get shimi_3 => 'shimi_3'.png;
  static String get lang_1 => 'lang_1'.png;
  static String get lang_2 => 'lang_2'.png;
  static String get lang_3 => 'lang_3'.png;
  static String get lang_4 => 'lang_4'.png;
  static String get lang_5 => 'lang_5'.png;
  static String get lang_6 => 'lang_6'.png;
  static String get lang_7 => 'lang_7'.png;
  static String get bio_1 => 'bio_1'.png;
  static String get bio_2 => 'bio_2'.png;
  static String get bio_3 => 'bio_3'.png;
  static String get searchDark => 'search_dark'.png;
  static String get searchLight => 'search_light'.png;
  static String get search_1 => 'search_1'.png;
  static String get search_2 => 'search_2'.png;
  static String get search_3 => 'search_3'.png;
  static String get open => 'open'.png;
  static String get slide_1 => 'slide_1'.icon;
  static String get slide_2 => 'slide_2'.icon;
  static String get slide_3 => 'slide_3'.icon;
  static String get slide_4 => 'slide_4'.icon;
}

extension on String {
  String get png => 'assets/images/$this.png';
  String get icon => 'assets/icons/$this.png';
  // String get intro => 'assets/images/png/intro/$this.png';
}
