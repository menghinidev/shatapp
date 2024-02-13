class ShatAppEnv {
  static const env = String.fromEnvironment('ENV', defaultValue: 'Prod');
  static const captchaKey = String.fromEnvironment(
    'CAPTCHA_KEY',
    defaultValue: '6LcXZW8pAAAAAO86VB6l867QhKsBXjmxFwqMmXWN',
  );
  static const bool isDevEnv = env == 'Dev';

  static const int userSessionRefreshSeconds = int.fromEnvironment(
    'SESSION_REFRESH',
    defaultValue: 30,
  );
  static const int userSessionInvalidSeconds = int.fromEnvironment(
    'SESSION_INVALID',
    defaultValue: 120,
  );
}
