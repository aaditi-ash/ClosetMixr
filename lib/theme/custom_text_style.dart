import 'package:flutter/material.dart';
import 'package:closetmixer/core/utils/size_utils.dart';
import 'package:closetmixer/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBlack900Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title style
  static get titleLargeMarcellus => theme.textTheme.titleLarge!.marcellus;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get cambay {
    return copyWith(
      fontFamily: 'Cambay',
    );
  }

  TextStyle get marcellus {
    return copyWith(
      fontFamily: 'Marcellus',
    );
  }

  TextStyle get publicSans {
    return copyWith(
      fontFamily: 'Public Sans',
    );
  }
}
