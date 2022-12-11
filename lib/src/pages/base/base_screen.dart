import 'package:flutter/material.dart';
import 'package:pgtel_app/src/config/custom_colors.dart';
import 'package:pgtel_app/src/pages/home/home_tab.dart';
import 'package:pgtel_app/src/pages/movement/movements_tab.dart';
import 'package:pgtel_app/src/pages/product/products_tab.dart';
import 'package:pgtel_app/src/pages/profile/profile_tab.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          MovementsTab(),
          ProductsTab(),
          ProfileTab(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.customSwatchColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: const IconThemeData(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                ),
                IconButton(
                  color: null,
                  icon: const Icon(Icons.swap_vert),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                ),
                const SizedBox(width: 24),
                IconButton(
                  icon: const Icon(Icons.archive_outlined),
                  onPressed: () {
                    pageController.jumpToPage(2);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person_outline),
                  onPressed: () {
                    pageController.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
