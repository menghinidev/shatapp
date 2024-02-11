extension DurationExtension on Duration {
  static Duration? parseDuration(String? value) {
    if (value == null || value.isEmpty) return null;
    final splitted = value.split(':');
    if (splitted.length < 2) return null;
    final hours = int.parse(splitted[0]);
    final minutes = int.parse(splitted[1]);
    return Duration(hours: hours, minutes: minutes);
  }

  String? get format {
    var result = '';
    if (inHours > 0) {
      result = '$inHours ${inHours == 1 ? 'ora' : 'ore'} ';
    }
    if (inMinutes % 60 > 0) {
      result += '${inMinutes % 60} ${inMinutes % 60 == 1 ? 'minuto' : 'minuti'}';
    }
    return result;
  }
}
