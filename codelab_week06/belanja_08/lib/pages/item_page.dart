import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item?;

    return Scaffold(
      appBar: AppBar(title: Text(item?.name ?? 'Item Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: item == null
            ? const Text('No item provided')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  Text('Price: Rp ${item.price}'),
                ],
              ),
      ),
    );
  }
}
