
import 'package:flutter/material.dart';
import 'package:madesoftlogic/theme/theme-data.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MainCard extends StatelessWidget {

  customBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xffd6d6d6).withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    ); 
  }    
  
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/form');
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: customBoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          // header 1
          Padding(
          padding: EdgeInsets.only(left:10),
          child: Text("Today's Transaction", style: CustomTheme.title),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left:10),
            child: Text('15 June 2020'),
          ),
          Divider(color: Colors.black54),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('\u20A6', style: CustomTheme.display3Light),
                Text('0.00', style: CustomTheme.display3Light),
              ],)
            )
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("Sales", style: CustomTheme.title),
          ],),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:  Row(
            // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 65,
                      size: 15,
                      padding: 0,
                      selectedColor: Color(0xffCF0566),
                      unselectedColor: Color(0xffF6BED9),
                      roundedEdges: Radius.circular(0),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Text('\u20A6', style: CustomTheme.displaySmall),
                      Text('0.00', style: CustomTheme.displaySmall),
                    ],)
                  ),
                  Text('Profit', style: CustomTheme.displaySmall),
                ],)
              )       
            ],),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:  Row(
              children: <Widget>[
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: 40,
                    size: 15,
                    padding: 0,
                    selectedColor: Color(0xffCF0566),
                    unselectedColor: Color(0xffF6BED9),
                    roundedEdges: Radius.circular(0),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Text('\u20A6', style: CustomTheme.displaySmall),
                      Text('0.00', style: CustomTheme.displaySmall),
                    ],)
                  ),
                  Text('Expenses', style: CustomTheme.displaySmall),
                ],)
              )       
            ],),
          ),
          SizedBox(height: 30)
        ],)
      ));
  }
}

