import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/generic_di_provider.dart';

final locator = GetIt.instance;
final appData = locator.get<GetStorage>();

void diSetup() {
  // locator.registerLazySingleton(() => FirebaseMessaging.instance);
  locator.registerSingleton<GetStorage>(GetStorage());
  locator.registerSingleton<WebViewController>(WebViewController());
  locator.registerSingleton<GenericDi>(GenericDi());
}
