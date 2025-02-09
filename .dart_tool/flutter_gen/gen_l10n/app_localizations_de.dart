import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get alternativeText => 'Alternativtext';

  @override
  String get imageButtons => 'Grafische Schalter';

  @override
  String get headings => 'Überschriften';

  @override
  String get editFields => 'Eingabefelder';

  @override
  String get contrastRatio => 'Kontrastverhältnis';

  @override
  String get focusOrder => 'Fokus-Reihenfolge';

  @override
  String get focusVisible => 'Focus Sichtbar';

  @override
  String get language => 'Sprache';

  @override
  String get privacyContact => 'Datenschutz & Kontakt';

  @override
  String get help => 'Hilfe';

  @override
  String get about => 'Über die App';

  @override
  String get altDescription => 'Im Folgenden wird gezeigt, was von Screenreader in den drei häufigsten Situationen vorgelesen wird (kein Alternativtext, dekorative Grafiken und informative Grafiken).';

  @override
  String get noAltText => 'Fehlender Alternativtext';

  @override
  String get noAltDescription => 'In diesem Beispiel wurde der Alternativtext absichtlich weggelassen. In der Praxis kommt es sehr oft vor, dass der Alternativtext versehentlich weggelassen wird.';

  @override
  String get decorativeGraphics => 'Dekorative Grafiken';

  @override
  String get decorativeGraphicDescriptions => 'Diese Grafik ist rein dekorativ, und der Alternativtext wurde leer gelassen, damit Screenreader die Grafik ignoriert und kein unnötigen Text ausgibt.';

  @override
  String get informativeGraphic => 'Informative Grafik';

  @override
  String get informativeGraphicDescription => 'In diesem Beispiel wurde davon ausgegangen, dass die Grafik informativ ist, weshalb sie mit einem Alternativtext versehen wurde.';

  @override
  String get description1ImageButton => 'Dieses Beispiel zeigt, wie sich Screenreader bei grafischen Schaltflächen verhält, die keinen Alternativtext enthalten, und zeigt gleichzeitig, wie die Schaltflächen für Menschen mit eingeschränkter Feinmotorik besser nutzbar gemacht werden können.';

  @override
  String get description2ImageButton => 'Bei der ersten grafischen Schaltfläche wurde der Alternativtext absichtlich weggelassen und auch das Touch-Target wurde nicht angepasst. Die zweite grafische Schaltfläche hingegen wurde korrekt beschriftet und das Touch-Target wurde angepasst, so dass die Schaltfläche größer dargestellt wird und somit leichter zu bedienen ist.';

  @override
  String get question1ImageButton => 'Frage 1: Was ist die aktuelle Version der WCAG?';

  @override
  String get answer1ImageButton => 'Die aktuelle Version der WCAG ist 2.2.';

  @override
  String get question2ImageButton => 'Frage 2: Wann wurde die aktuelle Version der WCAG veröffentlicht?';

  @override
  String get answer2ImageButton => 'Die aktuelle Version wurde im Oktober 2023 veröffentlicht.';

  @override
  String get contrastRadioDescription => 'Dem Kontrastverhältnis wird bei der Entwicklung mobiler Apps oft nicht genügend Aufmerksamkeit geschenkt. Gerade bei der mobilen Nutzung ist ein gutes Kontrastverhältnis jedoch für alle Nutzenden wichtig, z.B. bei der Nutzung mobiler Geräte im Freien bei Sonnenschein. Nachfolgend finden Sie einige Beispiele für gute und schlechte Kontrastverhältnisse.';

  @override
  String get contrastRadioPassed => 'Bestanden mit 21.0:1, HEX: #ffffff auf #000000.';

  @override
  String get contrastRadioFailed => 'Nicht bestanden mit 2.3:1, HEX: #ffffff auf #a0b0a1';

  @override
  String get contrastRadioJustPassed => 'Gerade noch bestanden mit 4,5:1, HEX: #00e9ff auf #5a4dad.';

  @override
  String get contrastRadioJustFailed => 'Knapp nicht bestanden mit 4.4:1, HEX: #ffffff auf #0083a1.';

  @override
  String get contrastRadioPassedWith => 'Bestanden mit einem Kontrastverhälnis von? HEX #ffffff auf #006400.';

  @override
  String get contrastRadioFaileddWith => 'Nicht bestanden mit einem Kontrastverhälnis von? HEX #ffffff auf #bb86fc.';
}
