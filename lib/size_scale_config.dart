/*
Base height and weight is as per the viewport size given in the designs
Hence baseHeight and baseWidth are constant throughout the app
 */
class SizeScaleConfig {
  final double baseHeight = 736.0;
  final double baseWidth = 414.0;

  static double screenHeight;
  static double screenWidth;
  static double heightScaleRatio;
  static double widthScaleRatio;

  calculateScaleRatios() {
    heightScaleRatio = screenHeight / baseHeight;
    widthScaleRatio = screenWidth / baseWidth;
  }

  scaleHeight(double actualHeight) {
    return actualHeight * heightScaleRatio;
  }

  scaleWidth(double actualWidth) {
    return actualWidth * widthScaleRatio;
  }
}
