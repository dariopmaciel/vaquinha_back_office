import 'package:flutter_modular/flutter_modular.dart';

import '../../core/rest_cliente/custom_dio.dart';
import '../../core/storage/session_storage.dart';
import '../../core/storage/storage.dart';

class CoreModule extends Module {

  


  @override
  void binds(i) {
    i.addLazySingleton(CustomDio.new);
    // i.addLazySingleton((i) => CustomDio());
    i.addLazySingleton<Storage>(SessionStorage.new);
    // i.addLazySingleton<Storage>((i) => SessionStorage());
  }

  // @override
  // void exportedBinds(Injector i) {
  //   i.addLazySingleton(CustomDio.new);
  //   i.addLazySingleton(SessionStorage.new);
  // }
}
