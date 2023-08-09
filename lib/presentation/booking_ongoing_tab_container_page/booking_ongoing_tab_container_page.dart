import 'package:cedric_s_application/core/app_export.dart';import 'package:cedric_s_application/presentation/booking_cancelled_page/booking_cancelled_page.dart';import 'package:cedric_s_application/presentation/booking_completed_page/booking_completed_page.dart';import 'package:cedric_s_application/presentation/booking_ongoing_page/booking_ongoing_page.dart';import 'package:cedric_s_application/widgets/app_bar/appbar_image.dart';import 'package:cedric_s_application/widgets/app_bar/appbar_title.dart';import 'package:cedric_s_application/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class BookingOngoingTabContainerPage extends StatefulWidget {@override _BookingOngoingTabContainerPageState createState() =>  _BookingOngoingTabContainerPageState();
onTapGoogle1(BuildContext context) async  { var url = 'https://accounts.google.com/';if(!await launch(url)) {throw 'Could not launch https://accounts.google.com/';} } 
 }

// ignore_for_file: must_be_immutable
class _BookingOngoingTabContainerPageState extends State<BookingOngoingTabContainerPage> with  TickerProviderStateMixin {late TabController group137Controller;

@override void initState() { super.initState(); group137Controller = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(50), leadingWidth: 56, leading: AppbarImage(height: getSize(32), width: getSize(32), svgPath: ImageConstant.imgGoogle, margin: getMargin(left: 24, top: 9, bottom: 9), onTap: () {onTapGoogle1(context);}), title: AppbarTitle(text: "My Bookings", margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearchWhiteA700, margin: getMargin(left: 24, top: 11, right: 24, bottom: 11))]), body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(45), width: getHorizontalSize(380), margin: getMargin(top: 30), child: TabBar(controller: group137Controller, labelColor: ColorConstant.whiteA700, labelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), unselectedLabelColor: ColorConstant.cyan60001, unselectedLabelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), indicator: BoxDecoration(color: ColorConstant.cyan60001, borderRadius: BorderRadius.circular(getHorizontalSize(22))), tabs: [Tab(child: Text("Ongoing", overflow: TextOverflow.ellipsis)), Tab(child: Text("Completed", overflow: TextOverflow.ellipsis)), Tab(child: Text("Canceled", overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(667), child: TabBarView(controller: group137Controller, children: [BookingOngoingPage(), BookingCompletedPage(), BookingCancelledPage()]))])))); } 
onTapGoogle1(BuildContext context) async  { var url = 'https://accounts.google.com/';if(!await launch(url)) {throw 'Could not launch https://accounts.google.com/';} } 
 }
