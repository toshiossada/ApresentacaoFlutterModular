import 'package:apesentacaoModular/app/modules/home/models/item_model.dart';
import 'package:apesentacaoModular/app/modules/home/services/interfaces/item_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IItemService _itemService;

  @observable
  ObservableList<ItemModel> list = ObservableList<ItemModel>();

  _HomeControllerBase(this._itemService) {
    list = _itemService.get().asObservable();
  }
}
