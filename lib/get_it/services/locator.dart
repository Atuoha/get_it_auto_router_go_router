import 'package:get_it/get_it.dart';
import 'package:get_it_auto_router_go_router/get_it/model/location_model.dart';
import 'package:get_it_auto_router_go_router/get_it/services/location_service.dart';

GetIt getIt = GetIt.instance;

void locator() {
  getIt.registerLazySingleton(() => LocationModel);
  getIt.registerFactory(() => LocationService());
}
