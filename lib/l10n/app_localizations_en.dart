// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get alternativeText => 'Alternative Text';

  @override
  String get imageButtons => 'Image Buttons';

  @override
  String get headings => 'Headings';

  @override
  String get editFields => 'Edit Fields';

  @override
  String get contrastRatio => 'Contrast Ratio';

  @override
  String get focusOrder => 'Focus Order';

  @override
  String get focusVisible => 'Focus Visible';

  @override
  String get privacyContact => 'Privacy & Contact';

  @override
  String get help => 'Help';

  @override
  String get about => 'About App';

  @override
  String get altDescription =>
      'The following will show what is read by screen readers in the three most common situations (no alternative text, decorative graphics, and informative graphics).';

  @override
  String get noAltText => 'No Alternative Text';

  @override
  String get noAltDescription =>
      'In this example, the alternative text was intentionally omitted. In practice, it happens very often that the alternative text is omitted by mistake';

  @override
  String get decorativeGraphics => 'Decorative Graphics';

  @override
  String get decorativeGraphicDescriptions =>
      'In this example, the graphic was assumed to be purely decorative and the alternative text was left blank so that screen readers ignores the graphic and does not output unnecessary text.';

  @override
  String get informativeGraphic => 'Informative Graphic';

  @override
  String get informativeGraphicDescription =>
      'In this example, the graphic was assumed to be informative, so it was provided with an alternative text.';

  @override
  String get description1ImageButton =>
      'This example shows how screen readers behave with graphic buttons that lack alternative text, and at the same time shows how the buttons can be made more usable for people with limited fine motor skills.';

  @override
  String get description2ImageButton =>
      'In the first input field, the link to the visible label was intentionally omitted. The second is correctly linked to the label.';

  @override
  String get question1ImageButton =>
      'Question #1: What is the current version of WCAG?';

  @override
  String get answer1ImageButton => 'The current version of WCAG is 2.2.';

  @override
  String get question2ImageButton =>
      'Question #2: When was the current version of WCAG released?';

  @override
  String get answer2ImageButton =>
      'The current version was released in October 2023.';

  @override
  String get helpQuestion2Button => 'Help for question 2';

  @override
  String get resetButton => 'Reset questions';

  @override
  String get contrastRadioDescription =>
      'The contrast ratio is often not given enough attention in the development of mobile apps. However, especially in mobile use, a good contrast ratio is important for all users, e.g. when using mobile devices outdoors in sunshine. Below you will find some examples of good and bad contrast ratios.';

  @override
  String get contrastRadioPassed =>
      'Passed with 21.0:1, HEX: #ffffff on #000000';

  @override
  String get contrastRadioFailed =>
      'Failed with 2.3:1, HEX: #ffffff on #a0b0a1.';

  @override
  String get contrastRadioJustPassed =>
      'Just passed with 4.5:1, HEX: #00e9ff on #5a4dad.';

  @override
  String get contrastRadioJustFailed =>
      'Just failed with 4.4:1, HEX: #ffffff on #0083a1.';

  @override
  String get contrastRadioPassedWith =>
      'Passed with contrast ratio of? HEX #ffffff on #006400.';

  @override
  String get contrastRadioFaileddWith =>
      'Failed with contrast ratio of?  HEX  on #bb86fc.';

  @override
  String get editFieldsDescription1 =>
      'In the following, we will show how screen readers behave when the visually visible labels have not been linked to the corresponding input field.';

  @override
  String get editFieldsDescription2 =>
      'No label was intentionally used in the first edit field. The second was labelled correctly.';

  @override
  String get firstEditFieldHint => 'First name';

  @override
  String get secondEditFieldLabel => 'Last name';

  @override
  String get buttonDisplayFullName => 'Display full Name';

  @override
  String get tabOrderDescription1 =>
      'People with limited fine motor skills may not be able to operate a touch screen. It is therefore important that an app can also be operated with a keyboard connected via Bluetooth and that the focus order of the operating elements is correct.';

  @override
  String get focusVisibleDescription1 =>
      'People with motor disabilities may have difficulty or be unable to operate a touch screen and therefore use a Bluetooth keyboard. This requires, among other things, that the keyboard focus is sufficiently visible.';

  @override
  String get focusVisibleDescription2 =>
      'In this example, the visibility of the keyboard focus was intentionally ignored for some button. Try using a Bluetooth keyboard paired with the mobile device and try to find and activate button 3 without counting how many times you press the Tab key.';

  @override
  String get toastButton1 => 'You have pressed button 1.';

  @override
  String get toastButton2 => 'You have pressed button 2.';

  @override
  String get toastButton3 => 'You have pressed button 3.';

  @override
  String get toastButton4 => 'You have pressed button 4.';

  @override
  String get toastButton5 => 'You have pressed button 5.';

  @override
  String get toastButton6 => 'You have pressed button 6.';
}
