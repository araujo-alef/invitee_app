import 'package:flutter_modular/flutter_modular.dart';
import 'package:invitee/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  List<ModularRoute> get routes => [
    ModuleRoute('/', module: HomeModule()),
  ];
}