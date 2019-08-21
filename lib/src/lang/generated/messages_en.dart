// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "errorMessageNetwork" : MessageLookupByLibrary.simpleMessage("Network error"),
    "errorMessageRemote" : MessageLookupByLibrary.simpleMessage("Remote server error"),
    "errorMessageUnknown" : MessageLookupByLibrary.simpleMessage("Unknown error"),
    "pickerConfirmThis" : MessageLookupByLibrary.simpleMessage("Confirm this location"),
    "pickerLoadPlacesError" : MessageLookupByLibrary.simpleMessage("Couldn\'t load nearby places…"),
    "pickerLoadSearchResultsError" : MessageLookupByLibrary.simpleMessage("Couldn\'t load search results…"),
    "pickerOrSelectNearby" : MessageLookupByLibrary.simpleMessage("Or choose a nearby place"),
    "pickerPlaceCancel" : MessageLookupByLibrary.simpleMessage("CHANGE LOCATION"),
    "pickerPlaceConfirm" : MessageLookupByLibrary.simpleMessage("Use this place?"),
    "pickerSearch" : MessageLookupByLibrary.simpleMessage("Search"),
    "pickerSearchThis" : MessageLookupByLibrary.simpleMessage("Search this location"),
    "pickerSelectThis" : MessageLookupByLibrary.simpleMessage("SELECT")
  };
}
