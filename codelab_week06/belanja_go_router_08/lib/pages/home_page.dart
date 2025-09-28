import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/item.dart';
import '../widgets/app_footer.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_card.dart';
import '../widgets/welcome_header.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Gula',
      price: 5000,
      imageUrl: 'assets/images/gula.jpg',
      stock: 25,
      rating: 4.5,
    ),
    Item(
      name: 'Garam',
      price: 2000,
      imageUrl: 'assets/images/garam.jpg',
      stock: 15,
      rating: 4.2,
    ),
    Item(
      name: 'Teh',
      price: 12000,
      imageUrl: 'assets/images/teh.jpeg',
      stock: 30,
      rating: 4.8,
    ),
    Item(
      name: 'Minyak Goreng',
      price: 15000,
      imageUrl: 'assets/images/minyak goreng.jpeg',
      stock: 20,
      rating: 4.3,
    ),
    Item(
      name: 'Kopi',
      price: 8000,
      imageUrl: 'assets/images/kopi.jpg',
      stock: 18,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'CakraMarketplace'),
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          // Welcome Header
          const WelcomeHeader(),

          // Products Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ProductCard(
                    item: item,
                    onTap: () {
                      // Using go_router navigation with extra parameter
                      context.go('/item', extra: item);
                    },
                  );
                },
              ),
            ),
          ),

          // Footer
          const AppFooter(),
        ],
      ),
    );
  }
}
