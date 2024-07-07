library trial_manager;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trial_manager/trial_manager.dart';


export 'src/enum.dart';
export 'src/screens/expiration_screen_type1.dart';
export 'src/screens/expiration_screen_type2.dart';
export 'src/screens/expiration_screen_type3.dart';

class TrialManager {
  static const String _installationDateKey = 'installation_date';
  static const int _defaultTrialPeriodDays = 30;
  static const String _screenTitle = 'Your Trial Period $_defaultTrialPeriodDays Days Has Expired ';
  static const String _screenMessage = 'Please purchase the full version to continue using the app.';
  static const String _upgradeButtonText = 'Upgrade Now';
  static const String _contactAddress = '';

  /// Set the TrialPeriodDays.




  /// Initialize the trial manager by setting the installation date if not already set.
  static Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final installationDate = prefs.getString(_installationDateKey);

    if (installationDate == null) {
      final now = DateTime.now();
      await prefs.setString(_installationDateKey, now.toIso8601String());
    }
  }

  /// Check if the trial period has expired.
  static Future<bool> isTrialExpired(
      { int trialPeriodDays = _defaultTrialPeriodDays}
      ) async {
    final prefs = await SharedPreferences.getInstance();
    final installationDateStr = prefs.getString(_installationDateKey);

    if (installationDateStr != null) {
      final installationDate = DateTime.parse(installationDateStr);
       final trialPeriod = Duration(days: trialPeriodDays);
       final now = DateTime.now();

      if (now.isAfter(installationDate.add(trialPeriod))) {

        return true; // Trial period has expired
      }
    }

    return false; // Trial period has not expired
  }

  /// Get the expiration screen based on the provided type.
  static Widget getExpirationScreen(
      {
        required ExpirationScreenType type,
        String title = _screenTitle,
        String message = _screenMessage,
        String upgradeButtonText = _upgradeButtonText,
        String contactAddress = _contactAddress,

      }
      ) {
    switch (type) {
      case ExpirationScreenType.type1:
        return  ExpirationScreenType1(
          title: title,
          message: message,

          contactAddress: contactAddress,
        );
      case ExpirationScreenType.type2:
        return  ExpirationScreenType2(
          title: title,
          message: message,
          contactAddress: contactAddress,
        );
      case ExpirationScreenType.type3:
        return  ExpirationScreenType3(
          title: title,
          message: message,
          contactAddress: contactAddress,
        );
      default:
        return  ExpirationScreenType1(
          title: title,
          message: message,
          contactAddress: contactAddress,
        );
    }
  }
}






