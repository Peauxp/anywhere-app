enum Flavor { Simpsons, Wire }

flavorToString(Flavor flavor) {
  switch (flavor) {
    case Flavor.Simpsons:
      return 'The Simpsons';
    case Flavor.Wire:
      return 'The Wire';
  }
}

class AppConfig {
  final String appName;
  final Flavor flavor;

  AppConfig({
    required this.appName,
    required this.flavor,
  });
}
