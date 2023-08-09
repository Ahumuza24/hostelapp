import '../booking_ongoing_page/widgets/listrectangle_item_widget.dart';import 'package:cedric_s_application/core/app_export.dart';import 'package:flutter/material.dart';import 'package:cedric_s_application/presentation/cancel_booking_bottomsheet/cancel_booking_bottomsheet.dart';class BookingOngoingPage extends StatefulWidget {@override _BookingOngoingPageState createState() =>  _BookingOngoingPageState();
onTapCancelbooking(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CancelBookingBottomsheet(),isScrollControlled: true); } 
onTapViewticket(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viewTicketScreen); } 
 }
class _BookingOngoingPageState extends State<BookingOngoingPage> with  AutomaticKeepAliveClientMixin<BookingOngoingPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 24, top: 30, right: 24), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(20));}, itemCount: 2, itemBuilder: (context, index) {return ListrectangleItemWidget(onTapCancelbooking: () {onTapCancelbooking(context);}, onTapViewticket: () {onTapViewticket(context);});}))])))); } 
onTapCancelbooking(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CancelBookingBottomsheet(),isScrollControlled: true); } 
onTapViewticket(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viewTicketScreen); } 
 }
