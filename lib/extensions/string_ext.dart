extension StringExt on String {
  String capitalizeFirstLetter() =>
      isEmpty ? '' : this[0].toUpperCase() + substring(1).toLowerCase();
}
