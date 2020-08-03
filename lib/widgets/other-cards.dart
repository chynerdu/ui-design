
import 'package:flutter/material.dart';
import 'package:madesoftlogic/theme/theme-data.dart';


class OtherCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String sup;
  OtherCard(this.imagePath, this.title, this.sup);

  customBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xffe0e0e0).withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],    
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    ); 
  }    
  
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width * 0.48,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: customBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image.asset(imagePath, width: 40, height: 40),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(sup, style: TextStyle(fontSize: 35, color: Color(0xff6619EA)))
            )
          ],),
            
          SizedBox(height: 10),
          Text(title, style: CustomTheme.titleLight),
      ],)
    );
  }
}