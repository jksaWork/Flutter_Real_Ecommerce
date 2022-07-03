import 'package:commerce/core/Constrant/AppColors.dart';
import 'package:commerce/data/Models/OnBardingModel.dart';
import 'package:commerce/data/Source/Static/on_board_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        // padding: EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            height: MediaQuery.of(context).size.height * .7,
            child: PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  OnBoardModel item = onBoardingList[i];
                  return Container(
                    // color: Colors.red,
                    // height: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          item.title!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Image.asset(
                            item.image!,
                            width: 200,
                            height: 250,
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              item.body!,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
              child: Column(
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      onBoardingList.length,
                      (index) => Container(
                            margin: EdgeInsets.all(5),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                          ))
                ],
              )),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Contioun',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ))
        ]),
      ),
    ));
  }
}
