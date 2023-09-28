abstract class KeyboardLanguage {
  const KeyboardLanguage();

  String get code;

  List<List<MapEntry<String, String>>> get keys;

  String get space;

  String get submit;
}

class EnglishKeyboardLanguage implements KeyboardLanguage {
  const EnglishKeyboardLanguage();

  @override
  String get code => 'en';

  @override
  List<List<MapEntry<String, String>>> get keys => const [
        [
          MapEntry('q', 'q'),
          MapEntry('w', 'w'),
          MapEntry('e', 'e'),
          MapEntry('r', 'r'),
          MapEntry('t', 't'),
          MapEntry('y', 'y'),
          MapEntry('u', 'u'),
          MapEntry('i', 'i'),
          MapEntry('o', 'o'),
          MapEntry('p', 'p'),
        ],
        [
          MapEntry('a', 'a'),
          MapEntry('s', 's'),
          MapEntry('d', 'd'),
          MapEntry('f', 'f'),
          MapEntry('g', 'g'),
          MapEntry('h', 'h'),
          MapEntry('j', 'j'),
          MapEntry('k', 'k'),
          MapEntry('l', 'l'),
        ],
        [
          MapEntry('z', 'z'),
          MapEntry('x', 'x'),
          MapEntry('c', 'c'),
          MapEntry('v', 'v'),
          MapEntry('b', 'b'),
          MapEntry('n', 'n'),
          MapEntry('m', 'm'),
        ],
      ];

  @override
  String get space => 'Space';

  @override
  String get submit => 'OK';
}

class RussianKeyboardLanguage implements KeyboardLanguage {
  const RussianKeyboardLanguage();

  @override
  String get code => 'ru';

  @override
  List<List<MapEntry<String, String>>> get keys => const [
        [
          MapEntry('й', 'q'),
          MapEntry('ц', 'w'),
          MapEntry('у', 'e'),
          MapEntry('к', 'r'),
          MapEntry('е', 't'),
          MapEntry('н', 'y'),
          MapEntry('г', 'u'),
          MapEntry('ш', 'i'),
          MapEntry('щ', 'o'),
          MapEntry('з', 'p'),
          MapEntry('х', '['),
          MapEntry('ъ', ']'),
        ],
        [
          MapEntry('ф', 'a'),
          MapEntry('ы', 's'),
          MapEntry('в', 'd'),
          MapEntry('а', 'f'),
          MapEntry('п', 'g'),
          MapEntry('р', 'h'),
          MapEntry('о', 'j'),
          MapEntry('л', 'k'),
          MapEntry('д', 'l'),
          MapEntry('ж', ';'),
          MapEntry('э', "'"),
        ],
        [
          MapEntry('я', 'z'),
          MapEntry('ч', 'x'),
          MapEntry('с', 'c'),
          MapEntry('м', 'v'),
          MapEntry('и', 'b'),
          MapEntry('т', 'n'),
          MapEntry('ь', 'm'),
          MapEntry('б', ','),
          MapEntry('ю', '.'),
        ],
      ];

  @override
  String get space => 'Пробел';

  @override
  String get submit => 'ОК';
}
