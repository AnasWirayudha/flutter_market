import 'package:flutter_market/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: Center(
        child: Text(item.name + ' in JPY ' + item.price.toString() + ' stock availability ' + item.stock.toString() +  ' per ' + item.per.toString()),
      ),
    );
  }
}