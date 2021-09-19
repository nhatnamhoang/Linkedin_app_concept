import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class BottomNavigationViewPager extends StatefulWidget {
  final Function(int)? onTapTab;
  final int? index;
  final int? countMessage;

  BottomNavigationViewPager({
    this.index,
    this.onTapTab,
    this.countMessage,
  });

  @override
  _BottomNavigationViewPagerState createState() =>
      _BottomNavigationViewPagerState();
}

class _BottomNavigationViewPagerState extends State<BottomNavigationViewPager> {
  var _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return itemBottomBar(widget.index!, widget.onTapTab);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget itemBottomBar(int index, Function(int)? action) =>
      BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        backgroundColor: AppColors.white,
        elevation: 0,
        onTap: (tab) {
          action!(tab);
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 15,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.blueUnSelectedIcon,
        items: [
          _itemBottomNavigation(
              icon: AppImages.icHome,
              index: index,
              label: '',
          ),
          _itemBottomNavigation(
              icon: AppImages.icWork,
              index: index,
              label: ''),
        ],
      );

  BottomNavigationBarItem _itemBottomNavigation(
      {required String icon, String? label, int? index}) =>
      BottomNavigationBarItem(
          icon: Column(
            children: [
              Container(
                child: Image.asset(
                  icon,
                  fit: BoxFit.contain,
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
          activeIcon: Container(
            child: Image.asset(
              index == 0 ? AppImages.icHomeActive : AppImages.icWorkActive,
              fit: BoxFit.contain,
              width: 24,
              height: 24,
              color: AppColors.mainColor,
            ),
          ),
          label: label);
}
