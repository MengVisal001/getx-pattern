
import 'en_US/en_us_translation.dart';
import 'km_KH/km_kh_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': enUs,
    'km_KH': kmKH,
  };
}
