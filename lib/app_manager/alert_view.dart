import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jressence/app_manager/text_theme.dart';

import 'app_color.dart';

class AlertView {
  singleButton(
      String? title,
      String massage,
      double? height,
      ) {
    Get.dialog(
      barrierDismissible: true,
      Material(
        color: Colors.transparent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              height: height??100.0,
              width: Get.width,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 5, 0, 5),
                        child: Text(title??"Alert!",
                            style: MyTextTheme.mediumBCB
                                .copyWith(fontSize: 16)),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(left: 8),
                        child: Text(massage,
                            style: MyTextTheme.mediumBCN
                                .copyWith(fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Text('Ok',
                                  style: MyTextTheme.mediumBCN
                                      .copyWith(color: AppColor.primaryColor)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  doubleButton(
      String? title,
      String massage,
      double? height,
      Function yesPressEvent
      ){
    Get.dialog(
      barrierDismissible: true,
      Material(
        color: Colors.transparent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              height: height??140,
              width: Get.width,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      Text(title??"Alert!",
                          style:
                          MyTextTheme.mediumBCB.copyWith(fontSize: 18,color: AppColor.red)),
                      const SizedBox(height: 7),
                      Text(massage,
                          style: MyTextTheme.mediumBCN
                              .copyWith(fontSize: 16)),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      color: AppColor.primaryColor,
                                      width: 0.5)),
                              child: Text('No',
                                  style: MyTextTheme.mediumBCN
                                      .copyWith(color: AppColor.primaryColor)),
                            ),
                          ),
                          const SizedBox(width: 40),
                          InkWell(
                            onTap: () {
                              Get.back();
                              yesPressEvent();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              decoration: BoxDecoration(
                                  color: AppColor.red,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Text('Yes',
                                  style: MyTextTheme.smallBCN),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}