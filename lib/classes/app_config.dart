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
  final String apiEndpoint;
  final Flavor flavor;

  AppConfig({
    required this.apiEndpoint,
    required this.flavor,
  });
}
