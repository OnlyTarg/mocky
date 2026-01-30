import 'package:mocky/mocky.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    // Reset to default locale before each test
    Mocky.setLocale(Locale.uk);
  });

  group('Locale', () {
    test('default locale is Ukrainian', () {
      expect(Mocky.getLocale(), Locale.uk);
    });

    test('can switch to US locale', () {
      Mocky.setLocale(Locale.us);
      expect(Mocky.getLocale(), Locale.us);
    });

    test('can switch back to Ukrainian', () {
      Mocky.setLocale(Locale.us);
      Mocky.setLocale(Locale.uk);
      expect(Mocky.getLocale(), Locale.uk);
    });
  });

  group('Mocky.word() - Ukrainian', () {
    test('returns a non-empty string', () {
      final word = Mocky.word();
      expect(word, isNotEmpty);
    });

    test('returns different values on multiple calls', () {
      final words = List.generate(20, (_) => Mocky.word());
      expect(words.toSet().length, greaterThan(1));
    });
  });

  group('Mocky.word() - US', () {
    test('returns a non-empty string', () {
      Mocky.setLocale(Locale.us);
      final word = Mocky.word();
      expect(word, isNotEmpty);
    });

    test('returns different values on multiple calls', () {
      Mocky.setLocale(Locale.us);
      final words = List.generate(20, (_) => Mocky.word());
      expect(words.toSet().length, greaterThan(1));
    });
  });

  group('Mocky.words()', () {
    test('returns correct count', () {
      expect(Mocky.words(5), hasLength(5));
      expect(Mocky.words(100), hasLength(100));
    });

    test('returns empty list for zero count', () {
      expect(Mocky.words(0), isEmpty);
    });

    test('all words are non-empty', () {
      final words = Mocky.words(10);
      expect(words.every((w) => w.isNotEmpty), isTrue);
    });
  });

  group('Mocky.name() - Ukrainian', () {
    test('returns a non-empty string', () {
      final name = Mocky.name();
      expect(name, isNotEmpty);
    });

    test('returns different values on multiple calls', () {
      final names = List.generate(20, (_) => Mocky.name());
      expect(names.toSet().length, greaterThan(1));
    });
  });

  group('Mocky.name() - US', () {
    test('returns a non-empty string', () {
      Mocky.setLocale(Locale.us);
      final name = Mocky.name();
      expect(name, isNotEmpty);
    });

    test('returns different values on multiple calls', () {
      Mocky.setLocale(Locale.us);
      final names = List.generate(20, (_) => Mocky.name());
      expect(names.toSet().length, greaterThan(1));
    });
  });

  group('Mocky.names()', () {
    test('returns correct count', () {
      expect(Mocky.names(5), hasLength(5));
      expect(Mocky.names(100), hasLength(100));
    });

    test('returns empty list for zero count', () {
      expect(Mocky.names(0), isEmpty);
    });

    test('all names are non-empty', () {
      final names = Mocky.names(10);
      expect(names.every((n) => n.isNotEmpty), isTrue);
    });
  });

  group('Mocky.phone() - Ukrainian', () {
    test('returns phone in correct format', () {
      final phone = Mocky.phone();
      expect(phone, matches(r'^\+380\d{9}$'));
    });

    test('uses valid operator prefix', () {
      final validPrefixes = [
        '039',
        '050',
        '063',
        '066',
        '067',
        '068',
        '073',
        '091',
        '092',
        '093',
        '094',
        '095',
        '096',
        '097',
        '098',
        '099',
      ];

      final phone = Mocky.phone();
      final prefix = phone.substring(4, 7);
      expect(validPrefixes, contains(prefix));
    });

    test('generates different numbers', () {
      final phones = List.generate(50, (_) => Mocky.phone());
      expect(phones.toSet().length, greaterThan(40));
    });
  });

  group('Mocky.phone() - US', () {
    test('returns phone in correct format', () {
      Mocky.setLocale(Locale.us);
      final phone = Mocky.phone();
      expect(phone, matches(r'^\+1\d{10}$'));
    });

    test('generates different numbers', () {
      Mocky.setLocale(Locale.us);
      final phones = List.generate(50, (_) => Mocky.phone());
      expect(phones.toSet().length, greaterThan(40));
    });
  });

  group('Mocky.phones()', () {
    test('returns correct count', () {
      expect(Mocky.phones(5), hasLength(5));
      expect(Mocky.phones(100), hasLength(100));
    });

    test('returns empty list for zero count', () {
      expect(Mocky.phones(0), isEmpty);
    });

    test('all Ukrainian phones match format', () {
      final phones = Mocky.phones(10);
      expect(phones.every((p) => p.startsWith('+380')), isTrue);
      expect(phones.every((p) => p.length == 13), isTrue);
    });

    test('all US phones match format', () {
      Mocky.setLocale(Locale.us);
      final phones = Mocky.phones(10);
      expect(phones.every((p) => p.startsWith('+1')), isTrue);
      expect(phones.every((p) => p.length == 12), isTrue);
    });
  });

  group('Mocky.email() - Ukrainian', () {
    test('returns email with @gmail.com', () {
      final email = Mocky.email();
      expect(email, endsWith('@gmail.com'));
    });

    test('has valid email format', () {
      final email = Mocky.email();
      expect(email, matches(r'^[a-z0-9]+@gmail\.com$'));
    });

    test('generates different emails', () {
      final emails = List.generate(50, (_) => Mocky.email());
      expect(emails.toSet().length, greaterThan(40));
    });

    test('contains only latin characters and digits', () {
      final emails = Mocky.emails(20);
      for (final email in emails) {
        final localPart = email.split('@')[0];
        expect(localPart, matches(r'^[a-z0-9]+$'));
      }
    });
  });

  group('Mocky.email() - US', () {
    test('returns email with @gmail.com', () {
      Mocky.setLocale(Locale.us);
      final email = Mocky.email();
      expect(email, endsWith('@gmail.com'));
    });

    test('has valid email format', () {
      Mocky.setLocale(Locale.us);
      final email = Mocky.email();
      expect(email, matches(r'^[a-z0-9]+@gmail\.com$'));
    });

    test('generates different emails', () {
      Mocky.setLocale(Locale.us);
      final emails = List.generate(50, (_) => Mocky.email());
      expect(emails.toSet().length, greaterThan(40));
    });
  });

  group('Mocky.emails()', () {
    test('returns correct count', () {
      expect(Mocky.emails(5), hasLength(5));
      expect(Mocky.emails(100), hasLength(100));
    });

    test('returns empty list for zero count', () {
      expect(Mocky.emails(0), isEmpty);
    });

    test('all emails end with @gmail.com', () {
      final emails = Mocky.emails(10);
      expect(emails.every((e) => e.endsWith('@gmail.com')), isTrue);
    });
  });
}
