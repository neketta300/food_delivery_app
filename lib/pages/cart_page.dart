import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      // cart
      final userCart = restaurant.cart;

      // scafold UI
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // clear cart button
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Are you want to clear the cart?"),
                    actions: [
                      // cancel button
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Cancel"),
                      ),
                      // yes button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                        child: Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // get indiviual cart item
                    final cartItem = userCart[index];

                    // return cart food list tile UI
                    return MyCartTile(
                      cartItem: cartItem,
                    );
                  }),
            ),
          ],
        ),
      );
    });
  }
}