class ShatAppEnv {
  static const env = String.fromEnvironment('ENV', defaultValue: 'Prod');
  static const captchaKey = String.fromEnvironment(
    'CAPTCHA_KEY',
    defaultValue: '6LcXZW8pAAAAAO86VB6l867QhKsBXjmxFwqMmXWN',
  );
  static const bool isDevEnv = env == 'Dev';
}
