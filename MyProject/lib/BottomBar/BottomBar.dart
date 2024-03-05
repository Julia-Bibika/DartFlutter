import 'package:flutter/material.dart';
import 'FavoritesPage.dart';
import 'MenuPage.dart';
import 'SettingsPage.dart';
import 'ShopListPage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CookBook"),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              text: "Settings",
            ),
            Tab(
              text: "Menu",
            ),
            Tab(
              text: "Favorites",
            ),
            Tab(
              text: "Shop List",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: const [
        Settings(),
        Menu(),
        Favorites(),
        ShopList(),
      ]),
    );
  }
}
