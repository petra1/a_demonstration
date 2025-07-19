// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get checkBoxes => 'Kontrollkästchen';

  @override
  String get contrastRatio => 'Kontrastverhältnis';

  @override
  String get focusOrder => 'Fokus-Reihenfolge';

  @override
  String get focusVisible => 'Focus Sichtbar';

  @override
  String get privacyContact => 'Datenschutz & Kontakt';

  @override
  String get help => 'Hilfe';

  @override
  String get about => 'Über die App';

  @override
  String get altDescription =>
      'Im Folgenden wird gezeigt, was von Screenreader in den drei häufigsten Situationen vorgelesen wird (kein Alternativtext, dekorative Grafiken und informative Grafiken).';

  @override
  String get noAltText => 'Fehlender Alternativtext';

  @override
  String get noAltDescription =>
      'In diesem Beispiel wurde der Alternativtext absichtlich weggelassen. In der Praxis kommt es sehr oft vor, dass der Alternativtext versehentlich weggelassen wird.';

  @override
  String get decorativeGraphics => 'Dekorative Grafiken';

  @override
  String get decorativeGraphicDescriptions =>
      'Diese Grafik ist rein dekorativ, und der Alternativtext wurde leer gelassen, damit Screenreader die Grafik ignoriert und kein unnötigen Text ausgibt.';

  @override
  String get informativeGraphic => 'Informative Grafik';

  @override
  String get informativeGraphicDescription =>
      'In diesem Beispiel wurde davon ausgegangen, dass die Grafik informativ ist, weshalb sie mit einem Alternativtext versehen wurde.';

  @override
  String get description1ImageButton =>
      'Dieses Beispiel zeigt, wie sich Screenreader bei grafischen Schaltflächen verhält, die keinen Alternativtext enthalten, und zeigt gleichzeitig, wie die Schaltflächen für Menschen mit eingeschränkter Feinmotorik besser nutzbar gemacht werden können.';

  @override
  String get description2ImageButton =>
      'Bei der ersten grafischen Schaltfläche wurde der Alternativtext absichtlich weggelassen und auch das Touch-Target wurde nicht angepasst. Die zweite grafische Schaltfläche hingegen wurde korrekt beschriftet und das Touch-Target wurde angepasst, so dass die Schaltfläche größer dargestellt wird und somit leichter zu bedienen ist.';

  @override
  String get question1ImageButton =>
      'Frage 1: Was ist die aktuelle Version der WCAG?';

  @override
  String get answer1ImageButton => 'Die aktuelle Version der WCAG ist 2.2.';

  @override
  String get question2ImageButton =>
      'Frage 2: Wann wurde die aktuelle Version der WCAG veröffentlicht?';

  @override
  String get answer2ImageButton =>
      'Die aktuelle Version wurde im Oktober 2023 veröffentlicht.';

  @override
  String get helpQuestion2Button => 'Hilfe für Frage 2.';

  @override
  String get resetButton => 'Fragen zurücksetzen';

  @override
  String get contrastRadioDescription =>
      'Dem Kontrastverhältnis wird bei der Entwicklung mobiler Apps oft nicht genügend Aufmerksamkeit geschenkt. Gerade bei der mobilen Nutzung ist ein gutes Kontrastverhältnis jedoch für alle Nutzenden wichtig, z.B. bei der Nutzung mobiler Geräte im Freien bei Sonnenschein. Nachfolgend finden Sie einige Beispiele für gute und schlechte Kontrastverhältnisse.';

  @override
  String get contrastRadioPassed =>
      'Bestanden mit 21.0:1, HEX: #ffffff auf #000000.';

  @override
  String get contrastRadioFailed =>
      'Nicht bestanden mit 2.3:1, HEX: #ffffff auf #a0b0a1';

  @override
  String get contrastRadioJustPassed =>
      'Gerade noch bestanden mit 4,5:1, HEX: #00e9ff auf #5a4dad.';

  @override
  String get contrastRadioJustFailed =>
      'Knapp nicht bestanden mit 4.4:1, HEX: #ffffff auf #0083a1.';

  @override
  String get contrastRadioPassedWith =>
      'Bestanden mit einem Kontrastverhälnis von? HEX #ffffff auf #006400.';

  @override
  String get contrastRadioFaileddWith =>
      'Nicht bestanden mit einem Kontrastverhälnis von? HEX #ffffff auf #bb86fc.';

  @override
  String get editFieldsDescription1 =>
      'Im Folgenden wird gezeigt, wie sich Screenreader verhalten, wenn die visuell sichtbaren Labels nicht mit dem entsprechenden Eingabefeld verknüpft sind.';

  @override
  String get editFieldsDescription2 =>
      'Im ersten Eingabefeld wurde absichtlich kein label verwendet. Das zweite wurde korrekt mit einem Label versehen.';

  @override
  String get firstEditFieldHint => 'Vorname';

  @override
  String get secondEditFieldLabel => 'Nachname';

  @override
  String get buttonDisplayFullName => 'Vollständigen Namen anzeigen';

  @override
  String get tabOrderDescription1 =>
      'Menschen mit eingeschränkter Feinmotorik sind möglicherweise nicht in der Lage, einen Touchscreen zu bedienen. Daher ist es wichtig, dass eine App auch mit einer über Bluetooth angeschlossenen Tastatur bedient werden kann und dass die Fokusreihenfolge der Bedienelemente korrekt ist.';

  @override
  String get checkBoxesDescription1 =>
      'Dieses Beispiel zeigt, wie sich TalkBack bei Kontrollkästchen verhält, die nicht richtig implementiert wurden.';

  @override
  String get checkBoxesDescription2 =>
      'Die ersten Kontrollkästchen wurden ohne Berücksichtigung der Accessibility implementiert. Bei den zweiten wurde darauf geachtet.';

  @override
  String get checkboxesQuestion1 => 'Frage 1: Können Sie programmieren?';

  @override
  String get checkboxQuestionYes => 'Ja';

  @override
  String get checkboxQuestionNo => 'Nein';

  @override
  String get checkboxesQuestion2 =>
      'Frage 2: Haben Sie vor programmieren zu lernen?';

  @override
  String get checkboxesQuestionDescription2 =>
      'Haben Sie vor programmieren zu lernen?';

  @override
  String get messageCheckboxQuestion1Yes => 'Sehr gut. Fleissig weiter lernen!';

  @override
  String get messageCheckboxQuestion1No =>
      'Auch gut. Es gibt auch noch andere Dinge, die man tuen kann.';

  @override
  String get messageCheckboxQuestion2Yes =>
      'Gut, Programmieren ist ein spannendes Hobby.';

  @override
  String get messageCheckboxQuestion2No =>
      'Vielleicht interessieren Sie sich später einmal für das Programmieren.';

  @override
  String get focusVisibleDescription1 =>
      'Motorischbehinderte Menschen haben möglicherweise Mühe oder sind nicht in der Lage einen Touch-Screen zu bedienen und verwenden daher eine Bluetooth-Tastatur. Dies setz unter anderem voraus, dass der Tastaturfokus genügend sichtbar ist. ';

  @override
  String get focusVisibleDescription2 =>
      'In diesem Beispiel wurde die Sichtbarkeit des Tastaturfokus für einige Schalter absichtlich ignoriert. Verwenden Sie, einer mit dem mobilen Gerät gekoppelte Bluetooth-Tastatur und versuchen, die Taste 3 zu finden und zu aktivieren, ohne zu zählen, wie oft Sie die Tab-Taste drücken.';

  @override
  String get toastButton1 => 'Sie haben Taste 1 gedrückt.';

  @override
  String get toastButton2 => 'Sie haben Taste 2 gedrückt.';

  @override
  String get toastButton3 => 'Sie haben Taste 3 gedrückt.';

  @override
  String get toastButton4 => 'Sie haben Taste 4 gedrückt.';

  @override
  String get toastButton5 => 'Sie haben Taste 5 gedrückt.';

  @override
  String get toastButton6 => 'Sie haben Taste 6 gedrückt.';
}
