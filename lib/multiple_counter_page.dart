import 'package:flutter/material.dart';
import 'package:value_notifier/state_manager.dart';

import 'product_model.dart';

class MultipleCounterPage extends StatelessWidget {
  const MultipleCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var products = [
      ProductModel(name: "Sepatu", quantity: 0.oby),
      ProductModel(name: "Baju", quantity: 0.oby),
      ProductModel(name: "Celana", quantity: 0.oby),
    ];

    debugPrint("masuk!");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) {
            final product = products[i];
            return ListTile(
              title: Text(product.name),
              subtitle: GetYBuilder(
                () => Text(product.quantity.value.toString()),
                notifier: product.quantity,
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  product.quantity.value++;
                },
                child: const Icon(Icons.add),
              ),
            );
          },
        ),
      ),
    );
  }
}
