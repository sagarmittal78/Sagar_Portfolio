import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/Achievements/components/achievements_details.dart';
import 'package:get/get.dart';
import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/certification_controller.dart';
class AchievementsGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  AchievementsGrid({super.key, this.crossAxisCount = 3,  this.ratio=1.3});
  final controller = Get.put(CertificationController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: certificateList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,),
                ]),
            child: AchievementsStack(index: index)
        ));
      },
    );
  }
}