import 'package:apesentacaoModular/app/modules/home/pages/details/details_controller.dart';
import 'package:apesentacaoModular/app/modules/home/pages/details/details_page.dart';
import 'package:apesentacaoModular/app/modules/home/services/item_service.dart';
import 'package:apesentacaoModular/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:apesentacaoModular/app/modules/home/home_page.dart';

import 'services/interfaces/item_service_interface.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        // Bind((i) => DetailsController()),
        // Bind<IItemService>((i) => ItemService()),
        // Bind((i) => HomeController(i.get<IItemService>())),
        $HomeController,
        $ItemService,
        $DetailsController,
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/details/:id',
            child: (_, args) => DetailsPage(
                  id: int.parse(args.params['id']),
                ),
            transition: TransitionType.downToUp),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
