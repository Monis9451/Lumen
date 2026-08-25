import 'package:photo_editor/src/core/enum/environment.dart';

abstract class IEnvironmentStorage {
  Environment get environment;
  String get sentryDsn;
}

class EnvironmentStorage implements IEnvironmentStorage {
  const EnvironmentStorage();

  @override
  Environment get environment {
    const name = String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'development',
    );
    return Environment.values.byName(name);
  }

  @override
  String get sentryDsn => const String.fromEnvironment('SENTRY_DSN');
}
