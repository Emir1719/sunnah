import 'package:get_it/get_it.dart';
import 'package:sunnah/constants/color.dart';
import 'package:sunnah/constants/style.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProjectColor());
  locator.registerLazySingleton(() => ProjectStyle());
}
