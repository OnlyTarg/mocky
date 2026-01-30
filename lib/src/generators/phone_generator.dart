import 'dart:math';

/// Generator for Ukrainian mobile phone numbers.
class PhoneGenerator {
  static final Random _random = Random();
  
  /// Valid Ukrainian mobile operator prefixes.
  static const List<String> _ukPrefixes = [
    '039', '050', '063', '066', '067', '068',
    '073', '091', '092', '093', '094', '095',
    '096', '097', '098', '099',
  ];

  /// Valid US area codes (sample of common ones).
  static const List<String> _usPrefixes = [
    '212', '213', '214', '215', '216', '217', '218', '219',
    '310', '312', '313', '314', '315', '316', '317', '318',
    '404', '405', '406', '407', '408', '409', '410', '412',
    '415', '417', '419', '423', '424', '425', '430', '432',
    '501', '502', '503', '504', '505', '507', '508', '509',
    '510', '512', '513', '515', '516', '517', '518', '520',
    '602', '603', '605', '606', '607', '608', '609', '610',
    '612', '614', '615', '616', '617', '618', '619', '620',
    '702', '703', '704', '706', '707', '708', '712', '713',
    '714', '715', '716', '717', '718', '719', '720', '724',
    '801', '802', '803', '804', '805', '806', '808', '810',
    '812', '813', '814', '815', '816', '817', '818', '828',
    '901', '903', '904', '906', '907', '908', '909', '910',
    '912', '913', '914', '915', '916', '917', '918', '919',
  ];

  /// Generates a random Ukrainian mobile phone number.
  /// Format: +380XXXXXXXXX (13 characters total)
  static String generateUk() {
    final prefix = _ukPrefixes[_random.nextInt(_ukPrefixes.length)];
    final suffix = _random.nextInt(1000000).toString().padLeft(6, '0');
    return '+380$prefix$suffix';
  }

  /// Generates a random US phone number.
  /// Format: +1XXXXXXXXXX (12 characters total)
  static String generateUs() {
    final areaCode = _usPrefixes[_random.nextInt(_usPrefixes.length)];
    final exchange = _random.nextInt(900) + 100; // 100-999
    final subscriber = _random.nextInt(10000).toString().padLeft(4, '0');
    return '+1$areaCode$exchange$subscriber';
  }

  /// Generates multiple Ukrainian phone numbers.
  static List<String> generateMultipleUk(int count) {
    return List.generate(count, (_) => generateUk());
  }

  /// Generates multiple US phone numbers.
  static List<String> generateMultipleUs(int count) {
    return List.generate(count, (_) => generateUs());
  }
}
