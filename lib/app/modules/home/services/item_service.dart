import 'package:apesentacaoModular/app/modules/home/models/item_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/item_service_interface.dart';

class ItemService extends Disposable implements IItemService {
  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  List<ItemModel> get() {
    return List.generate(100, (index) => ItemModel(index, 'Item $index'));
  }
}
