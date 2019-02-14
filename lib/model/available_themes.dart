import 'package:flutter/material.dart';
import 'package:natrium_wallet_flutter/localization.dart';
import 'package:natrium_wallet_flutter/themes.dart';
import 'package:natrium_wallet_flutter/model/setting_item.dart';

enum ThemeOptions { NATRIUM, TITANIUM, IRIDIUM }

/// Represent notification on/off setting
class ThemeSetting extends SettingSelectionItem {
  ThemeOptions theme;

  ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    switch (theme) {
      case ThemeOptions.TITANIUM:
        return "Titanium";
      case ThemeOptions.IRIDIUM:
        return "Iridium";
      case ThemeOptions.NATRIUM:
      default:
        return "Natrium";
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      case ThemeOptions.TITANIUM:
        return TitaniumTheme();
      case ThemeOptions.IRIDIUM:
        return IridiumTheme();
      case ThemeOptions.NATRIUM:
      default:
        return NatriumTheme();
    }    
  }

  // For saving to shared prefs
  int getIndex() {
    return theme.index;
  }
}