import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/certification_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/achievements_grid.dart';

class Achievements extends StatelessWidget {
  final controller=Get.put(CertificationController());
  Achievements({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'My Small & Big', title: 'Achievements'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: AchievementsGrid(crossAxisCount: 3,ratio: 1.5,),
                  extraLargeScreen: AchievementsGrid(crossAxisCount: 4,ratio: 1.6),
                  largeMobile: AchievementsGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: AchievementsGrid(crossAxisCount: 1,ratio: 1.4),
                  tablet: AchievementsGrid(ratio: 1.7,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}










