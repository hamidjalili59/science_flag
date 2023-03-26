class PngAssets {
  const PngAssets._();
  static String get logo => 'logo'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
  // String get icons => 'assets/images/icons/$this.png';
  // String get intro => 'assets/images/png/intro/$this.png';
}
