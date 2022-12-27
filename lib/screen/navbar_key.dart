import 'package:flutter/cupertino.dart';

class NavBarkey {
  NavBarkey._();
  static final GlobalKey _key = GlobalKey();
  static GlobalKey getKey() => _key;
}
