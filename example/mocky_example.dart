import 'package:mocky/mocky.dart';

void main() {
  print('=== Ukrainian locale (default) ===');
  print('Word: ${Mocky.word()}');
  print('Name: ${Mocky.name()}');
  print('Phone: ${Mocky.phone()}');
  print('Email: ${Mocky.email()}');
  print('Words: ${Mocky.words(3)}');

  print('\n=== US locale ===');
  Mocky.setLocale(Locale.us);
  print('Word: ${Mocky.word()}');
  print('Name: ${Mocky.name()}');
  print('Phone: ${Mocky.phone()}');
  print('Email: ${Mocky.email()}');
  print('Words: ${Mocky.words(3)}');

  print('\n=== Back to Ukrainian ===');
  Mocky.setLocale(Locale.uk);
  print('Word: ${Mocky.word()}');
  print('Name: ${Mocky.name()}');
  print('Phone: ${Mocky.phone()}');
  print('Email: ${Mocky.email()}');
}
