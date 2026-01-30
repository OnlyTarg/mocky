import 'dart:math';

/// Utility for random operations.
class RandomUtils {
  static final Random _random = Random();

  /// Returns a random element from the given list.
  static T randomElement<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }

  /// Returns a list of random elements from the given list.
  /// Allows duplicates if [count] exceeds list length.
  static List<T> randomElements<T>(List<T> list, int count) {
    return List.generate(count, (_) => randomElement(list));
  }
}
