import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget{
  final String title;
  final bool value;
  final Function updateValue;
  ListItem(this.title, this.value, this.updateValue, {Key key}) :super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListItemState();
  }

}
 
 class ListItemState extends State<ListItem> {
   @override
  bool switchValue;
  void initState() {
    switchValue = widget.value;
    super.initState();
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  updateState(value) {
  print('value $value');
   setState(() {
     switchValue = value;
   });
  }
  Widget buildSwitch() {
    return CustomSwitch(
      value: switchValue,
        onChanged: (value) {
          widget.updateValue(value);
        },
        activeColor: Color(0xffE0115F),
      );
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: ListTile(
        title: Text(widget.title),
        trailing: buildSwitch()
      )
    );
  }
}