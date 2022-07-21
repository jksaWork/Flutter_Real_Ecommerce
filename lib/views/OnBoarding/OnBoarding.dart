import 'package:commerce/controllers/on_boarding_controller.dart';
import 'package:commerce/core/Constrant/AppColors.dart';
import 'package:commerce/data/Models/OnBardingModel.dart';
import 'package:commerce/data/Source/Static/on_board_list.dart';
import 'package:commerce/views/OnBoarding/Widgets/dot_sections.dart';
import 'package:commerce/views/OnBoarding/Widgets/page_view_bulider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingController());
    return Scaffold(
        body: SafeArea(
      child: Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          PageViewSections(),
          DotSections(),
        ]),
      ),
    ));
  }
}
