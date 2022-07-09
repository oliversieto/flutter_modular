import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_class/src/modules/auth/auth_module.dart';
import 'package:modular_class/src/modules/product/product_module.dart';
import 'package:modular_class/src/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: ((context, args) => const SplashPage()),
        ),
        ModuleRoute(
          '/auth',
          module: AuthModule(),
        ),
        ModuleRoute('/product', module: ProductModule())
      ];
}
