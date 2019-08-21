/*
flutter pub run intl_translation:extract_to_arb --output-dir=lib/src/lang/l10n lib/src/lang/picker_localizations.dart

Bash:
flutter pub run intl_translation:generate_from_arb lib/src/lang/picker_localizations.dart lib/src/lang/l10n/intl_messages_*.arb  --output-dir=lib/src/lang/generated

PowerShell:
flutter pub run intl_translation:generate_from_arb lib/src/lang/picker_localizations.dart $(ls lib/src/lang/l10n/intl_messages_*.arb | % {"lib/src/lang/l10n/" + $_.Name}) --output-dir=lib/src/lang/generated
 */

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

// We have to build this file before we uncomment the next import line
import 'generated/messages_all.dart';

class PickerLocalizations {
  static PickerLocalizations _instance;
  static Locale _locale;
  /// Initialize localization systems and messages
  static Future<PickerLocalizations> load(BuildContext context) async {
    final Locale locale = Localizations.localeOf(context);
    if(_instance == null ||
        (_locale != null && _locale.toLanguageTag() != locale.toLanguageTag())) {
      // If we're given "en_US", we'll use it as-is. If we're
      // given "en", we extract it and use it.
      final String localeName =
        locale.countryCode == null || locale.countryCode.isEmpty
            ? locale.languageCode
            : locale.toString();

      // We make sure the locale name is in the right format e.g.
      // converting "en-US" to "en_US".
      final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

      await initializeMessages(canonicalLocaleName);
      // We'll uncomment the above line after we've built our messages file

      // Force the locale in Intl.
      Intl.defaultLocale = canonicalLocaleName;

      _instance = PickerLocalizations();
      _locale = locale;
    }
    return _instance;
  }

  // Localized Messages
  // Main:
  String get pickerSearchThis => Intl.message(
    'Search this location',
    name: 'pickerSearchThis',
    desc: 'A button to search current selection on the map shown when auto-search is off',
  );
  String get pickerOrSelectNearby => Intl.message(
    'Or choose a nearby place',
    name: 'pickerOrSelectNearby',
    desc: 'A title to the list of local businesses serving as an alternative to selecting the building',
  );
  String get pickerLoadPlacesError => Intl.message(
    "Couldn't load nearby places…",
    name: 'pickerLoadPlacesError',
    desc: 'An error shown when there was an issue loading nearby businesses',
  );
  String get pickerLoadSearchResultsError => Intl.message(
    "Couldn't load search results…",
    name: 'pickerLoadSearchResultsError',
    desc: 'An error shown when there was an issue loading search results',
  );
  String get pickerPlaceConfirm => Intl.message(
    'Use this place?',
    name: 'pickerPlaceConfirm',
    desc: 'A title of the confirmation dialog',
  );
  String get pickerPlaceCancel => Intl.message(
    'CHANGE LOCATION',
    name: 'pickerPlaceCancel',
    desc: 'A cancellation button of the confirmation dialog',
  );
  String get pickerConfirmThis => Intl.message(
    'Confirm this location',
    name: 'pickerConfirmThis',
    desc: 'A button that selects the currenltly focused building',
  );
  String get pickerSelectThis => Intl.message(
    'SELECT',
    name: 'pickerSelectThis',
    desc: 'A button that select a local business from the list',
  );

  // Errors:
  String get errorMessageNetwork => Intl.message(
    'Network error',
    name: 'errorMessageNetwork',
    desc: 'A network error message',
  );
  String get errorMessageRemote => Intl.message(
    'Remote server error',
    name: 'errorMessageRemote',
    desc: 'An unknown error message',
  );
  String get errorMessageUnknown => Intl.message(
    'Unknown error',
    name: 'errorMessageUnknown',
    desc: 'A remote server error message',
  );
}
