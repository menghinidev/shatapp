class ShatAppEnv {
  static const env = String.fromEnvironment('ENV', defaultValue: 'Dev');
  static const bool isDevEnv = env == 'Dev';
}
