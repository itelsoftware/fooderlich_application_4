import 'package:flutter/material.dart';

import 'models.dart';

class ProfileManager extends ChangeNotifier {
  User get getUser => User(
        firstName: 'Stef',
        lastName: 'Patt',
        role: 'Flutterista',
        profileImageUrl: 'assets/profile_pics/person_stef.jpeg',
        points: 100,
        darkMode: _darkMode,
      );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnDilektuhafiye => _tapOnDilektuhafiye;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnDilektuhafiye = false;
  var _darkMode = false;

  void set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnDilektuhafiye(bool selected) {
    _tapOnDilektuhafiye = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) {
    _didSelectUser = selected;
    notifyListeners();
  }
}
