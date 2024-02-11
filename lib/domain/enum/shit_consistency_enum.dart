enum ShitConsistency {
  liquid,
  sticky,
  normal,
  solid,
  cement;

  static ShitConsistency fromString(String value) => ShitConsistency.values.firstWhere(
        (element) => element.name == value.toLowerCase(),
      );
}
