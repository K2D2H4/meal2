import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.oSelectScreen});

  final void Function(String identifier) oSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood_rounded,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant_rounded,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 20,
                  ),
            ),
            onTap: () {
              oSelectScreen('meals');
            },
          ),
          ListTile(
              leading: Icon(
                Icons.settings,
                size: 26,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Filter',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 20,
                    ),
              ),
              onTap: () {
                oSelectScreen('filter');
              }),
        ],
      ),
    );
  }
}
