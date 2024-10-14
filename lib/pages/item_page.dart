import 'package:flutter/material.dart';
import 'package:navigation/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Card(
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Item: ${item.name}',
                    style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 8),
                Text('Price: ${item.price}',
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}