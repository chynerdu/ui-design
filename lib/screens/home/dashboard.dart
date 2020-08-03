import 'package:flutter/material.dart';
import 'package:madesoftlogic/widgets/main-card.dart';
import 'package:madesoftlogic/widgets/other-cards.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}
class DashboardState extends State<Dashboard> {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: MainCard()
        ,),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/payment-method.png', 'Sales Register', '' ),
          OtherCard('assets/alcohol.png','Product/Service', '' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/sms.png', 'SMS', '' ),
          OtherCard('assets/notification.png','Notifications', '\u00B3' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/report.png', 'Reports', '' ),
          OtherCard('assets/sales.png','Sales', '' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/man.png', 'Staffs', '' ),
          OtherCard('assets/expense.png','Expenses', '' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/customer.png', 'Customers', '' ),
          OtherCard('assets/wifi.png','Offline Sales', '\u00B3' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/cash.png', 'Payments', '' ),
          OtherCard('assets/settings.png','Setting', '' )
        ],),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          OtherCard('assets/work.png', 'Suppliers', '' ),
          OtherCard('assets/calculator.png','Calculator', '' )
        ],),
        SizedBox(height: 40),
      ],)
    );
  }

}