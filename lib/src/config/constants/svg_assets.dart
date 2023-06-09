class SVGAssets {
  const SVGAssets._();
  static String get layout1 => 'layout_0'.svg;
  static String get layout2 => 'layout_1'.svg;
  static String get layout3 => 'layout_2'.svg;
  static String get layout4 => 'layout_3'.svg;
  static String get layout5 => 'layout_4'.svg;
  static String get layout6 => 'layout_5'.svg;
  static String get layout7 => 'layout_6'.svg;
  static String get bag => 'bag'.svg;
  static String get search => 'search'.svg;
  static String get math_1 => 'math_1'.svg;
  static String get math_2 => 'math_2'.svg;
  static String get math_3 => 'math_3'.svg;
  static String get math_4 => 'math_4'.svg;
  static String get formula => 'formula'.svg;
  static String get modify => 'modify'.svg;
  static String get slide => 'slide'.svg;
  static String get course => 'course'.svg;
  static String get addIcon => 'add_icon'.svg;
}

extension on String {
  String get svg => 'assets/svg/$this.svg';
}
