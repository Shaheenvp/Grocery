import 'controller/my_cart_date_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCartDateScreen extends GetWidget<MyCartDateController> {
  const MyCartDateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBarSection(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 70.v),
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillGray,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 3.v),
                  _buildCalendarSection(),
                  SizedBox(height: 11.v),
                  _buildScheduleSection(),
                  Spacer(),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.symmetric(horizontal: 53.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                      buttonTextStyle: CustomTextStyles.titleLargeOnPrimary)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection() {
    return CustomAppBar(
        leadingWidth: 37.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 23.h, top: 43.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_select_slot".tr,
            margin: EdgeInsets.only(top: 41.v, bottom: 19.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildCalendarSection() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => SizedBox(
              height: 68.v,
              width: double.maxFinite,
              child: TableCalendar(
                  locale: 'en_US',
                  firstDay: DateTime(DateTime.now().year - 5),
                  lastDay: DateTime(DateTime.now().year + 5),
                  calendarFormat: CalendarFormat.month,
                  rangeSelectionMode: controller.rangeSelectionMode.value,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  calendarStyle: CalendarStyle(
                      outsideDaysVisible: false, isTodayHighlighted: true),
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                          color: appTheme.gray50001,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400)),
                  headerVisible: false,
                  focusedDay: controller.focusedDay.value,
                  rangeStartDay: controller.rangeStart,
                  rangeEndDay: controller.rangeEnd,
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(controller.selectedDay, selectedDay)) {
                      controller.focusedDay.value = focusedDay;
                      controller.selectedDay = selectedDay;
                      controller.rangeSelectionMode.value =
                          RangeSelectionMode.toggledOn;
                    }
                  },
                  onRangeSelected: (start, end, focusedDay) {
                    controller.focusedDay.value = focusedDay;
                    controller.rangeEnd = end;
                    controller.rangeStart = start;
                    controller.rangeSelectionMode.value =
                        RangeSelectionMode.toggledOn;
                  },
                  onPageChanged: (focusedDay) {
                    controller.focusedDay.value = focusedDay;
                  }))),
          SizedBox(height: 13.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_today".tr,
                    style: CustomTextStyles.bodyMediumPrimary),
                TextSpan(
                    text: "msg_wednesday_june".tr,
                    style: theme.textTheme.bodyMedium)
              ]),
              textAlign: TextAlign.left)
        ]));
  }

  /// Section Widget
  Widget _buildScheduleSection() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Container(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.h),
                        border: Border.all(
                            color: theme.colorScheme.primary, width: 1.h))),
                Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text("lbl_07_00_13_00".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 15.v),
              Row(children: [
                Container(
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(5.h)))),
                Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text("lbl_13_00_22_00".tr,
                        style: theme.textTheme.bodyMedium))
              ])
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
