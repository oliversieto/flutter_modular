import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_class/src/modules/product/views/list_product_page.dart';

import 'views/product_page.dart';

class ProductModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: ((context, args) => const ProductPage()),
        ),
        ChildRoute(
          '/list',
          child: ((context, args) => const ListProductPage()),
        ),
      ];
}
