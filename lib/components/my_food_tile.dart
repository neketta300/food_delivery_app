import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:share_plus/share_plus.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Offset? _tapPosition;

    return Column(
      children: [
        GestureDetector(
          onTapDown: (details) {
            // Сохраняем позицию касания
            _tapPosition = details.globalPosition;
          },
          onTap: onTap,
          onLongPress: () async {
            // Проверяем, что _tapPosition установлена
            if (_tapPosition == null) return;

            final RenderBox overlay =
                Overlay.of(context).context.findRenderObject() as RenderBox;
            final Offset position = overlay.globalToLocal(_tapPosition!);

            showMenu(
              menuPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              color: Theme.of(context).colorScheme.surface,
              context: context,
              position: RelativeRect.fromLTRB(
                position.dx,
                position.dy,
                screenWidth - position.dx,
                screenHeight - position.dy,
              ),
              items: [
                PopupMenuItem<String>(
                  value: 'share',
                  child: Center(
                    child: Text(
                      'Share',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ).then((value) async {
              if (value == 'share') {
                await Share.share('Checkout our best del food: ${food.name}');
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        '\$' + food.price.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.image,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
