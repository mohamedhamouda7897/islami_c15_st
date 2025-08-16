import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static cacheData(String key, dynamic value) async {
    if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is String) {
      await prefs.setString(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(key, value);
    }
  }

  static dynamic getData(String key) {
    return prefs.get(key);
  }
}
