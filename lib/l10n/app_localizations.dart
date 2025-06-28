import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// Alternative Text
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @alternativeText.
  ///
  /// In en, this message translates to:
  /// **'Alternative Text'**
  String get alternativeText;

  /// Headingss
  ///
  /// In en, this message translates to:
  /// **'Image Buttons'**
  String get imageButtons;

  /// No description provided for @headings.
  ///
  /// In en, this message translates to:
  /// **'Headings'**
  String get headings;

  /// Edit Fields
  ///
  /// In en, this message translates to:
  /// **'Edit Fields'**
  String get editFields;

  /// Contrast Ratio
  ///
  /// In en, this message translates to:
  /// **'Contrast Ratio'**
  String get contrastRatio;

  /// Focus Orde
  ///
  /// In en, this message translates to:
  /// **'Focus Order'**
  String get focusOrder;

  /// Focus Visible
  ///
  /// In en, this message translates to:
  /// **'Focus Visible'**
  String get focusVisible;

  /// Privacy & Contact
  ///
  /// In en, this message translates to:
  /// **'Privacy & Contact'**
  String get privacyContact;

  /// Help
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// About App
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get about;

  /// Description for  alternative text
  ///
  /// In en, this message translates to:
  /// **'The following will show what is read by screen readers in the three most common situations (no alternative text, decorative graphics, and informative graphics).'**
  String get altDescription;

  /// No Alternative Text
  ///
  /// In en, this message translates to:
  /// **'No Alternative Text'**
  String get noAltText;

  /// Description for no alternative text
  ///
  /// In en, this message translates to:
  /// **'In this example, the alternative text was intentionally omitted. In practice, it happens very often that the alternative text is omitted by mistake'**
  String get noAltDescription;

  /// Decorative Graphics
  ///
  /// In en, this message translates to:
  /// **'Decorative Graphics'**
  String get decorativeGraphics;

  /// No description provided for @decorativeGraphicDescriptions.
  ///
  /// In en, this message translates to:
  /// **'In this example, the graphic was assumed to be purely decorative and the alternative text was left blank so that screen readers ignores the graphic and does not output unnecessary text.'**
  String get decorativeGraphicDescriptions;

  /// No description provided for @informativeGraphic.
  ///
  /// In en, this message translates to:
  /// **'Informative Graphic'**
  String get informativeGraphic;

  /// No description provided for @informativeGraphicDescription.
  ///
  /// In en, this message translates to:
  /// **'In this example, the graphic was assumed to be informative, so it was provided with an alternative text.'**
  String get informativeGraphicDescription;

  /// Image Button Description 1
  ///
  /// In en, this message translates to:
  /// **'This example shows how screen readers behave with graphic buttons that lack alternative text, and at the same time shows how the buttons can be made more usable for people with limited fine motor skills.'**
  String get description1ImageButton;

  /// Image Button Description 2
  ///
  /// In en, this message translates to:
  /// **'In the first input field, the link to the visible label was intentionally omitted. The second is correctly linked to the label.'**
  String get description2ImageButton;

  /// Question #1
  ///
  /// In en, this message translates to:
  /// **'Question #1: What is the current version of WCAG?'**
  String get question1ImageButton;

  /// Answer #1
  ///
  /// In en, this message translates to:
  /// **'The current version of WCAG is 2.2.'**
  String get answer1ImageButton;

  /// Question #2
  ///
  /// In en, this message translates to:
  /// **'Question #2: When was the current version of WCAG released?'**
  String get question2ImageButton;

  /// Answer #2
  ///
  /// In en, this message translates to:
  /// **'The current version was released in October 2023.'**
  String get answer2ImageButton;

  /// Help for question 2
  ///
  /// In en, this message translates to:
  /// **'Help for question 2'**
  String get helpQuestion2Button;

  /// reset button
  ///
  /// In en, this message translates to:
  /// **'Reset questions'**
  String get resetButton;

  /// contrast radio description
  ///
  /// In en, this message translates to:
  /// **'The contrast ratio is often not given enough attention in the development of mobile apps. However, especially in mobile use, a good contrast ratio is important for all users, e.g. when using mobile devices outdoors in sunshine. Below you will find some examples of good and bad contrast ratios.'**
  String get contrastRadioDescription;

  /// contrast radio passed
  ///
  /// In en, this message translates to:
  /// **'Passed with 21.0:1, HEX: #ffffff on #000000'**
  String get contrastRadioPassed;

  /// contrast radio passed
  ///
  /// In en, this message translates to:
  /// **'Failed with 2.3:1, HEX: #ffffff on #a0b0a1.'**
  String get contrastRadioFailed;

  /// contrast radio just passed
  ///
  /// In en, this message translates to:
  /// **'Just passed with 4.5:1, HEX: #00e9ff on #5a4dad.'**
  String get contrastRadioJustPassed;

  /// contrast radio just failed
  ///
  /// In en, this message translates to:
  /// **'Just failed with 4.4:1, HEX: #ffffff on #0083a1.'**
  String get contrastRadioJustFailed;

  /// contrast radio passed with
  ///
  /// In en, this message translates to:
  /// **'Passed with contrast ratio of? HEX #ffffff on #006400.'**
  String get contrastRadioPassedWith;

  /// contrast radio failed with
  ///
  /// In en, this message translates to:
  /// **'Failed with contrast ratio of?  HEX  on #bb86fc.'**
  String get contrastRadioFaileddWith;

  /// Description1 for edit fields
  ///
  /// In en, this message translates to:
  /// **'In the following, we will show how screen readers behave when the visually visible labels have not been linked to the corresponding input field.'**
  String get editFieldsDescription1;

  /// Description 2 for edit fields
  ///
  /// In en, this message translates to:
  /// **'No label was intentionally used in the first edit field. The second was labelled correctly.'**
  String get editFieldsDescription2;

  /// Hint for edit field first name
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstEditFieldHint;

  /// Label for edit field Last name
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get secondEditFieldLabel;

  /// Button to display full name
  ///
  /// In en, this message translates to:
  /// **'Display full Name'**
  String get buttonDisplayFullName;

  /// Tab order description1
  ///
  /// In en, this message translates to:
  /// **'People with limited fine motor skills may not be able to operate a touch screen. It is therefore important that an app can also be operated with a keyboard connected via Bluetooth and that the focus order of the operating elements is correct.'**
  String get tabOrderDescription1;

  /// Description 1 for focus visible
  ///
  /// In en, this message translates to:
  /// **'People with motor disabilities may have difficulty or be unable to operate a touch screen and therefore use a Bluetooth keyboard. This requires, among other things, that the keyboard focus is sufficiently visible.'**
  String get focusVisibleDescription1;

  /// Description 2 for focus visible
  ///
  /// In en, this message translates to:
  /// **'In this example, the visibility of the keyboard focus was intentionally ignored for some button. Try using a Bluetooth keyboard paired with the mobile device and try to find and activate button 3 without counting how many times you press the Tab key.'**
  String get focusVisibleDescription2;

  /// Toast for button 6
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 1.'**
  String get toastButton1;

  /// Toast for button 2
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 2.'**
  String get toastButton2;

  /// Toast for button 3
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 3.'**
  String get toastButton3;

  /// Toast for button 4
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 4.'**
  String get toastButton4;

  /// Toast for button 5
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 5.'**
  String get toastButton5;

  /// No description provided for @toastButton6.
  ///
  /// In en, this message translates to:
  /// **'You have pressed button 6.'**
  String get toastButton6;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
