# Trial Manager

Trial Manager is a Flutter package that facilitates managing trial periods and handling expiration screens using Lottie animations.

## Features

- **Trial Period Management:** Easily integrate trial period management into your Flutter applications.
- **Expiration Screens:** Automatically handle screens that inform users when their trial period expires.


## Installation

To use this package, add `trial_manager` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  trial_manager: latest version

```
Then, import the package in your Dart code:
```dart
import 'package:trial_manager/trial_manager.dart';

```

Usage
Initialize Trial Manager
Initialize the Trial Manager in your application to start managing trial periods:

```dart 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TrialManager.initialize();

  final trialExpired = await TrialManager.isTrialExpired(trialPeriodDays: 12); // 30 days by default

  runApp(MyApp());
}

```

Show an expiration screen when the trial period ends:

```dart

 if(trialExpired){
      return  MaterialApp(
        home: TrialManager.getExpirationScreen(type: ExpirationScreenType.type1 ), // default screen tyep1
      );
    }
```

Example
For a complete example, refer to the example directory in this repository.




## Authors

- [@rakibullhaque](https://github.com/hydrationnirob)


## Support

For support, email rakibullhaques@gmail.com or join our Slack channel.

