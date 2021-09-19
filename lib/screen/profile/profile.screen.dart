import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/custom_text_field.dart';
import 'package:linkedin_app_concept/@share/widget/network_circle_avatar.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/filled_round_button.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/friends.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/item_job.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';
import 'package:linkedin_app_concept/screen/profile/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () => goBack(),
          child: Image.asset(AppImages.icArrowLeft),
        ),
        title: _buildSearchTitle(),
        actions: [
          InkWell(
            onTap: () => {},
            child: Container(
              width: 19.28,
              margin: const EdgeInsets.only(right: 21),
              child: Image.asset(AppImages.icOptions),
            ),
          )
        ],
      ),
      body: Container(
        height: heightScreen(),
        width: widthScreen(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            heightSpace(10),
            _buildHeader(),
            heightSpace(10),
            _buildIntroHead(),
            heightSpace(18),
            Friends(),
            heightSpace(20),
            _buildButtonsContact(),
            heightSpace(32.6),
            _buildTabCategories(),
            _buildTabContent()
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() => Container(
        child: Stack(
          children: [
            _buildCoverImage(),
            _buildUserAvatar(),
          ],
        ),
      );

  Widget _buildUserAvatar() => Container(
        margin: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: NetworkCircleAvatar(
            avatarUrl:
                "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
            width: 105,
          ),
        ),
      );

  Widget _buildCoverImage() => Container(
        height: 107,
        margin: const EdgeInsets.symmetric(horizontal: 19),
        decoration: BoxDecoration(
          color: AppColors.greenMedium,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      );

  Widget _buildSearchTitle() => Container(
        width: widthScreen(),
        child: CustomTextField(
          borderRadius: BorderRadius.circular(10),
          backgroundColor: AppColors.searchBackGround,
          cursorColor: AppColors.mainColor,
          paddingHorizontal: 20,
          hintText: "Román Guinto",
          haveIconSearch: false,
          styleHintText: AppStyles()
              .typeRoboto(12, AppColors.textSearch)
              .copyWith(fontWeight: FontWeight.w400),
        ),
      );

  Widget _buildIntroHead() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Román Guinto',
              style: AppStyles()
                  .typeRoboto(25, AppColors.textTitleHead)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            heightSpace(9),
            Text(
              'Ui/ux designer & dev In Distbit.io'.toUpperCase(),
              style: AppStyles()
                  .typeRoboto(12, AppColors.textSecondaryColor)
                  .copyWith(fontWeight: FontWeight.w400),
            )
          ],
        ),
      );

  Widget _buildButtonsContact() => Container(
        margin: const EdgeInsets.only(left: 19, right: 16),
        width: widthScreen(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: _btnContact(),
            ),
            Flexible(
              flex: 3,
              child: _btnMessages(),
            ),
            Flexible(
              flex: 1,
              child: _buildButtonSetting(),
            )
          ],
        ),
      );

  Widget _buildButtonSetting() => InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.blueMedium,
          ),
          width: 36,
          height: 36,
          child: Image.asset(
            AppImages.icSetting,
          ),
        ),
      );

  Widget _btnContact() {
    return Container(
      height: 36,
      child: FilledRoundButton.withColor(
        onTap: () => {},
        pureColor: AppColors.mainColor,
        radius: 18,
        text: Text(
          "Conectar",
          style: AppStyles()
              .typeRoboto(12, AppColors.white)
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _btnMessages() {
    return Container(
      height: 36,
      child: FilledRoundButton.withColor(
        onTap: () => {},
        pureColor: AppColors.white,
        radius: 18,
        text: Text(
          "Enviar mensaje",
          style: AppStyles()
              .typeRoboto(12, AppColors.mainColor)
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

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
        child: TabBar(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
              .copyWith(bottom: 0),
          controller: profileController.tabController,
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
          labelStyle:
              AppStyles().typeRoboto(12).copyWith(fontWeight: FontWeight.w500),
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
          tabs: [
            Tab(
              text: 'Perfil',
            ),
            Tab(
              text: 'Actividad',
            ),
            Tab(
              text: 'Experiencia',
            ),
          ],
        ),
      );

  Widget _buildTabContent() => Expanded(
        child: TabBarView(
          controller: profileController.tabController,
          children: [
            _buildTabInfo(),
            Center(child: Text("Updating")),
            Center(child: Text("Updating"))
          ],
        ),
      );

  Widget _buildTabInfo() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.5, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleHead(title: 'Acerca de'),
              heightSpace(10.5),
              _buildContent(),
              heightSpace(32),
              _buildContactInfo(),
              heightSpace(34.1),
              _buildTitleHead(title: 'Educación', haveSeeMore: true),
              heightSpace(30.1),
              _buildEducationList()
            ],
          ),
        ),
      );

  Widget _buildTitleHead({String? title, bool? haveSeeMore = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title!,
              style: AppStyles()
                  .typeRoboto(15, AppColors.textTitleHead)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          haveSeeMore!
              ? Text(
                  'See more',
                  style: AppStyles()
                      .typeRoboto(11, AppColors.textBlueDeepContent)
                      .copyWith(fontWeight: FontWeight.w300),
                )
              : const SizedBox()
        ],
      );

  Widget _buildContent() => Container(
        child: Text(
          'Me considero una persona dedicada, dispuesta a aportar con mis conocimientos de buena manera en las empresas donde laboro. Mi pasión es resolver problemas utilizando el desarrollo web como herramienta.',
          style:
              AppStyles().typeRoboto(11).copyWith(fontWeight: FontWeight.w300),
        ),
      );

  Widget _buildContactInfo() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _itemContactInfo(
                icon: AppImages.icAddress,
                content: 'Vive en Zihuatanejo, Guerrero, México.'),
            heightSpace(16),
            _itemContactInfo(
                icon: AppImages.icTime, content: 'Trabaja en distbit.io'),
            heightSpace(16),
            _itemContactInfo(
                icon: AppImages.icWarning,
                content: 'Ver más información de Mauricio')
          ],
        ),
      );

  Widget _itemContactInfo({String? icon, String? content}) => Container(
        child: Row(
          children: [
            Image.asset(icon!),
            widthSpace(12.7),
            Text(
              content!,
              style: AppStyles().typeRoboto(11),
            )
          ],
        ),
      );

  Widget _buildEducationList() => Container(
        child: ListView.builder(
          itemCount: 3,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 0),
          itemBuilder: (context, index) => ItemJob(),
        ),
      );
}
