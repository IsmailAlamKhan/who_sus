class Env {
  static const _instance = Env._();
  const Env._();

  static const instance = _instance;

  String get anonKey => const String.fromEnvironment('ANON-KEY');
  String get url => const String.fromEnvironment('PROJECT-URL');
}
