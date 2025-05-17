import 'package:flutter/material.dart';

class BaseDimen {
  static double get xxxxxSmall => 4.0;

  static double get xxxxSmall => 6.0;

  static double get xxxSmall => 8.0;

  static double get xxSmall => 10.0;

  static double get xSmall => 12.0;

  static double get small => 14.0;

  static double get medium => 20.0;

  static double get large => 24.0;

  static double get xLarge => 28.0;

  static double get xxLarge => 30.0;
}

class VSpacings {
  static SizedBox get xxxxxSmall => SizedBox(height: BaseDimen.xxxxxSmall);

  static SizedBox get xxxxSmall => SizedBox(height: BaseDimen.xxxxSmall);

  static SizedBox get xxxSmall => SizedBox(height: BaseDimen.xxxSmall);

  static SizedBox get xxSmall => SizedBox(height: BaseDimen.xxSmall);

  static SizedBox get xSmall => SizedBox(height: BaseDimen.xSmall);

  static SizedBox get small => SizedBox(height: BaseDimen.small);

  static SizedBox get medium => SizedBox(height: BaseDimen.medium);

  static SizedBox get large => SizedBox(height: BaseDimen.large);

  static SizedBox get xLarge => SizedBox(height: BaseDimen.xLarge);
}

class HSpacings {
  static SizedBox get xxxxxSmall => SizedBox(width: BaseDimen.xxxxxSmall);

  static SizedBox get xxxxSmall => SizedBox(width: BaseDimen.xxxxSmall);

  static SizedBox get xxxSmall => SizedBox(width: BaseDimen.xxxSmall);

  static SizedBox get xxSmall => SizedBox(width: BaseDimen.xxSmall);

  static SizedBox get xSmall => SizedBox(width: BaseDimen.xSmall);

  static SizedBox get small => SizedBox(width: BaseDimen.small);

  static SizedBox get medium => SizedBox(width: BaseDimen.medium);

  static SizedBox get large => SizedBox(width: BaseDimen.large);

  static SizedBox get xLarge => SizedBox(width: BaseDimen.xLarge);
}
