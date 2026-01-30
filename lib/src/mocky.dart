import 'dictionary/uk_words.dart';
import 'dictionary/uk_names.dart';
import 'dictionary/us_words.dart';
import 'dictionary/us_names.dart';
import 'utils/random_utils.dart';
import 'generators/phone_generator.dart';
import 'generators/email_generator.dart';
import 'locale.dart';

export 'locale.dart';

/// Main API for generating mock data.
class Mocky {
  static Locale _locale = Locale.uk;

  /// Sets the locale for data generation.
  /// Default is [Locale.uk].
  static void setLocale(Locale locale) {
    _locale = locale;
  }

  /// Gets the current locale.
  static Locale getLocale() => _locale;

  /// Returns a single random word in the current locale.
  static String word() {
    return _locale == Locale.uk
        ? RandomUtils.randomElement(ukWords)
        : RandomUtils.randomElement(usWords);
  }

  /// Returns a list of random words in the current locale.
  /// 
  /// If [count] exceeds the dictionary size, duplicates may occur.
  static List<String> words(int count) {
    return _locale == Locale.uk
        ? RandomUtils.randomElements(ukWords, count)
        : RandomUtils.randomElements(usWords, count);
  }

  /// Returns a single random name in the current locale.
  static String name() {
    return _locale == Locale.uk
        ? RandomUtils.randomElement(ukNames)
        : RandomUtils.randomElement(usNames);
  }

  /// Returns a list of random names in the current locale.
  /// 
  /// If [count] exceeds the dictionary size, duplicates may occur.
  static List<String> names(int count) {
    return _locale == Locale.uk
        ? RandomUtils.randomElements(ukNames, count)
        : RandomUtils.randomElements(usNames, count);
  }

  /// Returns a random phone number in the current locale.
  /// - Ukrainian format: +380XXXXXXXXX (13 characters)
  /// - US format: +1XXXXXXXXXX (12 characters)
  static String phone() {
    return _locale == Locale.uk
        ? PhoneGenerator.generateUk()
        : PhoneGenerator.generateUs();
  }

  /// Returns a list of random phone numbers in the current locale.
  static List<String> phones(int count) {
    return _locale == Locale.uk
        ? PhoneGenerator.generateMultipleUk(count)
        : PhoneGenerator.generateMultipleUs(count);
  }

  /// Returns a random Gmail email address in the current locale.
  static String email() {
    return _locale == Locale.uk
        ? EmailGenerator.generateUk()
        : EmailGenerator.generateUs();
  }

  /// Returns a list of random Gmail email addresses in the current locale.
  static List<String> emails(int count) {
    return _locale == Locale.uk
        ? EmailGenerator.generateMultipleUk(count)
        : EmailGenerator.generateMultipleUs(count);
  }
}
