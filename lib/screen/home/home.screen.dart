import 'package:flutter/cupertino.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/bottom_navigation_viewpager.dart';
import 'package:linkedin_app_concept/@share/widget/scaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_friends.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_post.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/header_account.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';
import 'package:linkedin_app_concept/screen/discover/discover.screen.dart';

import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  final homeController = Get.put(HomeController());

  onClickTab(int index) {
    homeController.pageController.jumpToPage(index);
    homeController.updateIndexTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: onClickTab,
        controller: homeController.pageController,
        children: [_buildHomePage(), DiscoverScreen()],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationViewPager(
          index: homeController.indexTab.value,
          onTapTab: onClickTab,
        ),
      ),
    );
  }

  Widget _buildHomePage() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderAccount(),
            heightSpace(24),
            ListFriends(),
            _buildTitleHead(),
            _buildTabCategories(),
            _buildTabContent()
          ],
        ),
      );

  Widget _buildTitleHead() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 29.5),
        child: Text(
          "Noticias",
          style:
              AppStyles().typeRoboto(20).copyWith(fontWeight: FontWeight.bold),
        ),
      );

  Widget _buildTabCategories() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 23.5),
    height: 45,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AppColors.blueBorder,
          width: 1.0,
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: const SizedBox(),
        ),
        Flexible(
          child: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5).copyWith(bottom: 0),
            controller: homeController.tabController,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.mainColor,
                  width: 2.0,
                ),
              ),
            ),
            labelColor: AppColors.mainColor,
            unselectedLabelColor: AppColors.textTabUnSelect,
            labelStyle: AppStyles()
                .typeRoboto(11)
                .copyWith(fontWeight: FontWeight.w400),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Seguidos',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Explorar',
              ),
            ],
          ),
        )
      ],
    ),
  );


  Widget _buildTabContent() =>  Expanded(
    child: TabBarView(
      controller: homeController.tabController,
      children: [
        ListPost(),
        ListPost()
      ],
    ),
  );
}
