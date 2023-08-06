import 'package:get_it/get_it.dart';
import 'package:sunnah/constants/color.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProjectColor());
}
