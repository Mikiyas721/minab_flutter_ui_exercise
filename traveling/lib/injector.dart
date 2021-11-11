import './data/model/location.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

void inject() {
  GetIt.instance.registerLazySingleton<BehaviorSubject<List<Location>>>(
      () => BehaviorSubject());
}
