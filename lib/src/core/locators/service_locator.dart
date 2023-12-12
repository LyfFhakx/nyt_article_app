import 'package:get_it/get_it.dart';
import 'package:nytimes_articles_app/src/core/locators/sync_locators.dart';

import 'dio_locator.dart';

final getIt = GetIt.instance;

Future<void> serviceLocatorInitialization() async {
  initSharedPrefsInjections();
  initAppInjections();
  initArticlesInjections();
  await initializeDioModules();
}