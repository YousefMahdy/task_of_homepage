import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = HomeCubit.get(context);

    return BlocConsumer<HomeCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        backgroundColor: Colors.grey[150],
        body: cubit.screens[cubit.current_index],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          backgroundColor: Colors.grey[300],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.notifications_active_outlined,
            Icons.account_circle_outlined,
            Icons.shopping_cart_outlined,
            Icons.settings_outlined,
          ],
          activeIndex: cubit.current_index,
          onTap: (x) {},

          iconSize: 25,

          inactiveColor: Colors.grey,
          activeColor: Colors.blueGrey,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          // notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 5,
          rightCornerRadius: 5,
        ),
      ),
    );
  }
}
