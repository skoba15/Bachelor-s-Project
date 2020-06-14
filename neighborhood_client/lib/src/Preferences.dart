import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static SharedPreferences _prefs;

  static void setPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences getPreferences() {
    return _prefs;
  }
}