import 'package:bottom_bar_getx/controllers/bottom_bar_controller.dart';
import 'package:bottom_bar_getx/pages/home.dart';
import 'package:bottom_bar_getx/pages/profile.dart';
import 'package:bottom_bar_getx/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  final BottomBarController bottomBarController =
      Get.put(BottomBarController());

  final List<Widget> pages = [Home(), Profile(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Bottom Bar"),
      ),
      body: Obx(() =>
          Center(
            child: pages[bottomBarController.currentIndex],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
            currentIndex: bottomBarController.currentIndex,
            onTap: (index) => bottomBarController.currentIndex = index,
          )),
    );
  }
}
