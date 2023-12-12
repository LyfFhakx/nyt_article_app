import '../../../main.dart';
import '../../core.dart';

enum LanguageEnum {
  ru, // Russian
  en, // English
}

extension LanguageEnumExtension on LanguageEnum {
  String get local {
    switch (this) {
      case LanguageEnum.ru:
        return "ru";

      case LanguageEnum.en:
        return "en";

      default:
        return "1";
    }
  }

  String get localHeader {
    switch (this) {
      case LanguageEnum.ru:
        return "ru_RU";

      case LanguageEnum.en:
        return "en_US";

      default:
        return "en_US";
    }
  }

  String get langName {
    switch (this) {
      case LanguageEnum.ru:
        return S.of(navigatorKey.currentContext!).russian;

      case LanguageEnum.en:
        return S.of(navigatorKey.currentContext!).english;

      default:
        return S.of(navigatorKey.currentContext!).english;
    }
  }
}
