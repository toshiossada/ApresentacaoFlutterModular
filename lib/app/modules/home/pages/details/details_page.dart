import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../home_controller.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final int id;
  const DetailsPage({Key key, this.title = "Details", this.id})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var controller = Modular.get<HomeController>();
    var item = controller.list.firstWhere((element) => element.id == widget.id);
    return Scaffold(
      appBar: AppBar(
        title: Text('#${item.id}'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text('#${item.id} - ${item.descricao}'),
          ),
        ],
      ),
    );
  }
}
