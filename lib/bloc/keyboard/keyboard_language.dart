abstract class KeyboardLanguage {
  const KeyboardLanguage();

  String get code;

  List<List<String>> get keys;

  String get space;

  String get submit;
}

class EnglishKeyboardLanguage implements KeyboardLanguage {
  const EnglishKeyboardLanguage();

  @override
  String get code => 'en';

  @override
  List<List<String>> get keys => const [
        ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
        ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
        ['z', 'x', 'c', 'v', 'b', 'n', 'm'],
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
  List<List<String>> get keys => const [
        ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х', 'ъ'],
        ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
        ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю'],
      ];

  @override
  String get space => 'Пробел';

  @override
  String get submit => 'ОК';
}
