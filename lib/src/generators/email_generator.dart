import 'dart:math';
import '../dictionary/uk_names.dart';
import '../dictionary/uk_words.dart';
import '../dictionary/us_names.dart';
import '../dictionary/us_words.dart';

/// Generator for Gmail email addresses.
class EmailGenerator {
  static final Random _random = Random();

  /// Transliteration map for Ukrainian to Latin characters.
  static const Map<String, String> _translitMap = {
    'а': 'a', 'б': 'b', 'в': 'v', 'г': 'h', 'ґ': 'g', 'д': 'd', 'е': 'e', 'є': 'ye',
    'ж': 'zh', 'з': 'z', 'и': 'y', 'і': 'i', 'ї': 'yi', 'й': 'y', 'к': 'k', 'л': 'l',
    'м': 'm', 'н': 'n', 'о': 'o', 'п': 'p', 'р': 'r', 'с': 's', 'т': 't', 'у': 'u',
    'ф': 'f', 'х': 'kh', 'ц': 'ts', 'ч': 'ch', 'ш': 'sh', 'щ': 'shch', 'ь': '', 'ю': 'yu',
    'я': 'ya', '\'': '',
  };

  /// Transliterates Ukrainian text to Latin characters.
  static String _transliterate(String text) {
    final lower = text.toLowerCase();
    final buffer = StringBuffer();
    
    for (int i = 0; i < lower.length; i++) {
      final char = lower[i];
      buffer.write(_translitMap[char] ?? char);
    }
    
    return buffer.toString();
  }

  /// Generates a random Gmail email address for Ukrainian locale.
  static String generateUk() {
    final useWord = _random.nextBool();
    final base = useWord 
        ? ukWords[_random.nextInt(ukWords.length)]
        : ukNames[_random.nextInt(ukNames.length)];
    
    final transliterated = _transliterate(base);
    final digits = _random.nextInt(1000);
    
    return '$transliterated$digits@gmail.com';
  }

  /// Generates a random Gmail email address for US locale.
  static String generateUs() {
    final useWord = _random.nextBool();
    final base = useWord 
        ? usWords[_random.nextInt(usWords.length)]
        : usNames[_random.nextInt(usNames.length)];
    
    final normalized = base.toLowerCase();
    final digits = _random.nextInt(1000);
    
    return '$normalized$digits@gmail.com';
  }

  /// Generates multiple Ukrainian email addresses.
  static List<String> generateMultipleUk(int count) {
    return List.generate(count, (_) => generateUk());
  }

  /// Generates multiple US email addresses.
  static List<String> generateMultipleUs(int count) {
    return List.generate(count, (_) => generateUs());
  }
}
