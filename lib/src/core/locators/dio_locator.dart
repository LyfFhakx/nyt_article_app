import 'package:shared_preferences/shared_preferences.dart';

import '../../utils.dart';
import '../network/dio_network.dart';
import 'service_locator.dart';

Future<void> initializeDioModules() async {
  initRootLogger();
  DioNetwork.initDio();
}

void initSharedPrefsInjections() async {
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  await getIt.isReady<SharedPreferences>();
}

