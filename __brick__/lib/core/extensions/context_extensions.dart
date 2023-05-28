import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double get lowValue => height * 0.01;
  double get mediumValue => height * 0.02;
  double get highValue => height * 0.06;
  double get veryHighValue => height * 0.1;
  double get veryHighValue2x => height * 0.2;
  double get veryHighValue3x => height * 0.3;
  double get veryHighValue4x => height * 0.4;
  double get veryHighValue5x => height * 0.5;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingAllDefault => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingAllHigh => EdgeInsets.all(highValue);
  EdgeInsets get paddingAllVeryHigh => EdgeInsets.all(veryHighValue);

  EdgeInsets get paddingHorizontalLow => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingHorizontalDefault => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHorizontalHigh => EdgeInsets.symmetric(horizontal: highValue);
  EdgeInsets get paddingHorizontaVeryHigh => EdgeInsets.symmetric(horizontal: veryHighValue);

  EdgeInsets get paddingVerticalLow => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingVerticalDefault => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingVerticalHigh => EdgeInsets.symmetric(vertical: highValue);
  EdgeInsets get paddingVerticalVeryHigh => EdgeInsets.symmetric(vertical: veryHighValue);

  EdgeInsets get paddingRightLow => EdgeInsets.only(right: lowValue);
  EdgeInsets get paddingRightDefault => EdgeInsets.only(right: mediumValue);
  EdgeInsets get paddingRightHigh => EdgeInsets.only(right: highValue);
  EdgeInsets get paddingRightVeryHigh => EdgeInsets.only(right: veryHighValue);

  EdgeInsets get paddingLeftLow => EdgeInsets.only(left: lowValue);
  EdgeInsets get paddingLeftDefault => EdgeInsets.only(left: mediumValue);
  EdgeInsets get paddingLeftHigh => EdgeInsets.only(left: highValue);
  EdgeInsets get paddingLeftVeryHigh => EdgeInsets.only(left: veryHighValue);

  EdgeInsets get paddingTopLow => EdgeInsets.only(top: lowValue);
  EdgeInsets get paddingTopDefault => EdgeInsets.only(top: mediumValue);
  EdgeInsets get paddingTopHigh => EdgeInsets.only(top: highValue);
  EdgeInsets get paddingTopVeryHigh => EdgeInsets.only(top: veryHighValue);

  EdgeInsets get paddingBottomLow => EdgeInsets.only(bottom: lowValue);
  EdgeInsets get paddingBottomDefault => EdgeInsets.only(bottom: mediumValue);
  EdgeInsets get paddingBottomHigh => EdgeInsets.only(bottom: highValue);
  EdgeInsets get paddingBottomVeryHigh => EdgeInsets.only(bottom: veryHighValue);
}

extension DurationExtension on BuildContext {
  Duration get durationLow => const Duration(milliseconds: 250);
  Duration get durationDefault => const Duration(milliseconds: 500);
  Duration get durationHigh => const Duration(milliseconds: 1000);
  Duration get durationVeryHigh => const Duration(milliseconds: 2000);
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
