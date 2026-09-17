// import 'api_environment.dart';

// enum BuildEnvironmentType {
//   local,
//   development,
//   staging,
//   production;

//   static BuildEnvironmentType fromString(String value) {
//     switch (value) {
//       case 'local':
//         return BuildEnvironmentType.local;

//       case 'development':
//         return BuildEnvironmentType.development;

//       case 'staging':
//         return BuildEnvironmentType.staging;

//       case 'production':
//         return BuildEnvironmentType.production;

//       default:
//         throw ArgumentError(
//           'Unknown environment: $value',
//         );
//     }
//   }
// }

// class BuildEnvironment {
//   final BuildEnvironmentType environment;
//   final ApiEnvironment api;
//   final String appName;

//   const BuildEnvironment({
//     required this.environment,
//     required this.api,
//     required this.appName,
//   });

//   bool get isLocal =>
//       environment == BuildEnvironmentType.local;

//   bool get isDevelopment =>
//       environment == BuildEnvironmentType.development;

//   bool get isStaging =>
//       environment == BuildEnvironmentType.staging;

//   bool get isProduction =>
//       environment == BuildEnvironmentType.production;

//   static BuildEnvironment fromDartDefine() {
//     const environmentName = String.fromEnvironment(
//       'ENV',
//       defaultValue: 'development',
//     );

//     final environment =
//         BuildEnvironmentType.fromString(environmentName);

//     return BuildEnvironment(
//       environment: environment,
//       api: ApiEnvironment.values.byName(environment.name),
//       appName: _appName(environment),
//     );
//   }

//   static String _appName(
//     BuildEnvironmentType environment,
//   ) {
//     switch (environment) {
//       case BuildEnvironmentType.local:
//         return 'Kelid Local';

//       case BuildEnvironmentType.development:
//         return 'Kelid Development';

//       case BuildEnvironmentType.staging:
//         return 'Kelid Staging';

//       case BuildEnvironmentType.production:
//         return 'Kelid';
//     }
//   }
// }
// ------------------------------------------------------
/*    in----->.vscode/launch.json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Kelid Local",
      "request": "launch",
      "type": "dart",
      "toolArgs": [
        "--dart-define=ENV=local"
      ]
    },
    {
      "name": "Kelid Development",
      "request": "launch",
      "type": "dart",
      "toolArgs": [
        "--dart-define=ENV=development"
      ]
    },
    {
      "name": "Kelid Staging",
      "request": "launch",
      "type": "dart",
      "toolArgs": [
        "--dart-define=ENV=staging"
      ]
    },
    {
      "name": "Kelid Production",
      "request": "launch",
      "type": "dart",
      "toolArgs": [
        "--dart-define=ENV=production"
      ]
    }
  ]
}
--------------------------------------
in ---->andriod-studio

Name:
Kelid Staging

Dart entrypoint:
F:\kavanoProjects\kilid\lib\main.dart

Additional run args:
--no-pub --dart-define=ENV=staging
--no-pub --dart-define=ENV=local
--no-pub --dart-define=ENV=development
--no-pub --dart-define=ENV=staging
--no-pub --dart-define=ENV=production


*/