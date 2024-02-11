enum ShitEffort {
  effortless,
  easy,
  medium,
  hard,
  legendary;

  static ShitEffort fromString(String value) => ShitEffort.values.firstWhere(
        (element) => element.name == value.toLowerCase(),
      );
}
