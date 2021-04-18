import 'package:get_it/get_it.dart';

import '../domain/domain_shared_preferences.dart';
import '../ui/localization/Language.dart';
import 'DialogUtility.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
//  locator.registerLazySingleton<DomainManger>(() => DomainManger());
  locator.registerLazySingleton<SharedPreferencesDomain>(
      () => SharedPreferencesDomain());
  locator.registerLazySingleton<DialogUtility>(() => DialogUtility());
  locator.registerLazySingleton<Language>(() => Language());
//  locator.registerLazySingleton<LocalCartItemsRepo>(() => LocalCartItemsRepo());
}
