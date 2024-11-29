import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<AppDataFromGetIt>(AppDataFromGetIt('Hello from GetIt'));
}

// класс который будет хранить данные для GetIt
class AppDataFromGetIt {
  final String value;

  AppDataFromGetIt(this.value);
}

// класс AppData для InheritedWidget
class AppData {
  final String value;

  AppData(this.value);

  @override
  String toString() {
    return value;
  }
}
