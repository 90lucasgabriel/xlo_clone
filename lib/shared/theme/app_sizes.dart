abstract class AppSizes {
  double get zero;
  double get min;
  double get small;
  double get normal;
  double get medium;
  double get large;
  double get xLarge;
  double get xxLarge;
}

class AppSizesDefault implements AppSizes {
  @override
  double get zero => 0;

  @override
  double get min => 1;

  @override
  double get small => 4;

  @override
  double get normal => 8;

  @override
  double get medium => 16;

  @override
  double get large => 24;

  @override
  double get xLarge => 36;

  @override
  double get xxLarge => 72;
}
