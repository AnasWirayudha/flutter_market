import 'package:flutter_market/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Sugar(砂糖)', price: 134, stock: 32, per: '1 kilogram'),
    Item(name: 'Duck Egg(アヒルの卵)', price: 17, stock: 48, per: '1 egg'),
    Item(name: 'Coffee(コーヒー)', price: 2022, stock: 24, per: '1 kilogram'),
    Item(name: 'Tea(お茶)', price: 400, stock: 40, per: '1 kilogram'),
    Item(name: 'Instant Ramen(インスタントラーメン)', price: 842, stock: 42, per: '1 box')
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
       body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item.name)
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
      ),
    );
  }
}