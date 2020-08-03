import 'package:flutter/material.dart';


class CustomTextFormField extends StatefulWidget {
   final String placeholder;
   final Function onSave;
   CustomTextFormField(this.placeholder, this.onSave,  {Key key}) :super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CustomTextFormFieldState();
  }
}
 class CustomTextFormFieldState extends State<CustomTextFormField> {
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 
 validate() {
  print('validating');
  return  _formKey.currentState.validate();
 }

 save() {
   print('saving');
   _formKey.currentState.save();
 }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      // autovalidate: true,
      child: TextFormField(        
        style: TextStyle(
          decoration: TextDecoration.none,
        ),
        decoration: InputDecoration(
          labelText: widget.placeholder,
          labelStyle: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w400,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
          ) ,
          border: UnderlineInputBorder(
          )
 
        ),
        validator: (String value) {
          if (value.isEmpty ) {
            return "field can't be empty";
          }
        },
        onSaved: (String value) {
          widget.onSave(value);
        },
      ));
  }
}

