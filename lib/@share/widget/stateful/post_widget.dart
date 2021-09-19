import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/account_info.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/reaction_widget.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import 'action_bottom_bar.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23.9).copyWith(top: 25),
      child: Column(
        children: [
          _buildHeaderInfo(),
          heightSpace(12),
          _buildContent(),
          heightSpace(9.3),
          _buildImage(),
          heightSpace(17.5),
          ActionBottomBar(),
          heightSpace(28),
          Divider(color: AppColors.blueUnSelectedIcon,),
        ],
      ),
    );
  }

  Widget _buildHeaderInfo() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AccountInfo(),
          InkWell(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.blueMedium,
                ),
                width: 27.28,
                height: 27.28,
                child: Image.asset(
                  AppImages.icSetting,
                  width: 14.69,
                  height: 3.73,
                )),
          )
        ],
      );

  Widget _buildContent() => Container(
        child: Text(
          'Hola comunidad Linkedin, les comparto mi portafolio que desarrolle Con el fin de poder pertenecer a una empresa de software, tengo Experiencia en el área del frontend',
          style:
              AppStyles().typeRoboto(10).copyWith(fontWeight: FontWeight.w300),
        ),
      );

  Widget _buildImage() => Stack(
        children: [
          Container(
            width: widthScreen(),
            child: Image.asset(
              AppImages.post,
              fit: BoxFit.cover,
            ),
          ),
          _buildReaction()
        ],
      );

  Widget _buildReaction() => Positioned(
        top: 140,
        left: 23.6,
        bottom: 20,
        child: ReactionWidget(),
      );

  Widget _buildActionBottom() => Container();
}
