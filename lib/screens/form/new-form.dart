import 'package:flutter/material.dart';
import 'package:madesoftlogic/theme/theme-data.dart';
import 'package:madesoftlogic/widgets/list-item.dart';
import 'package:madesoftlogic/widgets/passwordField.dart';
import 'package:madesoftlogic/widgets/textFormField.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  GlobalKey<ListItemState> online_pos_key = GlobalKey();
  GlobalKey<ListItemState> sales_report_key = GlobalKey();
  GlobalKey<ListItemState> view_customer_key = GlobalKey();
  GlobalKey<ListItemState> edit_customer_key = GlobalKey();
  GlobalKey<ListItemState> view_suppliers_key = GlobalKey();
  GlobalKey<ListItemState> edit_suppliers_key = GlobalKey();
  GlobalKey<ListItemState> product_access_key = GlobalKey();
  GlobalKey<ListItemState> add_product_key = GlobalKey();
  GlobalKey<ListItemState> view_cost_price_key = GlobalKey();
  GlobalKey<ListItemState> edit_product_key = GlobalKey();
  GlobalKey<ListItemState> restock_product_key = GlobalKey();
  GlobalKey<ListItemState> delete_product_key = GlobalKey();
  GlobalKey<ListItemState> add_edit_staff_key = GlobalKey();
  GlobalKey<ListItemState> view_staff_key = GlobalKey();
  GlobalKey<ListItemState> sales_report_access_key = GlobalKey();
  GlobalKey<ListItemState> inventory_report_key = GlobalKey();
  GlobalKey<ListItemState> expense_report_key = GlobalKey();
  GlobalKey<ListItemState> update_profile_key = GlobalKey();
  GlobalKey<ListItemState> add_edit_expense_key = GlobalKey();
  GlobalKey<ListItemState> view_expense_key = GlobalKey();
  
  onSave() {

  }

  // update online pos
  updateOnlinePosSwitch(value) {
    online_pos_key.currentState.updateState(value);
    print('pos updated $value');
  }

  updateAllSalesReportsSwitch(value) {
    sales_report_key.currentState.updateState(value);
  }

  updateViewCustomerSwitch(value) {
    view_customer_key.currentState.updateState(value);
  }

  updateEditCustomerSwitch(value) {
    edit_customer_key.currentState.updateState(value);
  }

  updateViewSuppliersSwitch(value) {
    view_suppliers_key.currentState.updateState(value);
  }

  updateEditSuppliersSwitch(value) {
    edit_suppliers_key.currentState.updateState(value);
  }

  updateProductAccessSwitch(value) {
    product_access_key.currentState.updateState(value);
  }

  updateAddProductSwitch(value) {
    add_product_key.currentState.updateState(value);
  }

  updateViewCostPriceSwitch(value) {
    view_cost_price_key.currentState.updateState(value);
  }

  updateEditProductSwitch(value) {
    edit_product_key.currentState.updateState(value);
  }

  updateRestockProductSwitch(value) {
    restock_product_key.currentState.updateState(value);
  }

  updateDeleteProductSwitch(value) {
    delete_product_key.currentState.updateState(value);
  }

  updateAddEditStaffSwitch(value) {
    add_edit_staff_key.currentState.updateState(value);
  }

  updateViewSwitch(value) {
    view_staff_key.currentState.updateState(value);
  }

  updateSalesReportSwitch(value) {
    sales_report_access_key.currentState.updateState(value);
  }

  updateInventoryReportSwitch(value) {
    inventory_report_key.currentState.updateState(value);
  }

  updateExpenseReportSwitch(value) {
    expense_report_key.currentState.updateState(value);
  }

  updateProfileUpdateSwitch(value) {
    update_profile_key.currentState.updateState(value);
  }


  updateAddEditExpenseSwitch(value) {
    add_edit_expense_key.currentState.updateState(value);
  }

  updateViewExpenseSwitch(value) {
    view_expense_key.currentState.updateState(value);
  }

  

  customButtonDecoration() {
    return BoxDecoration(
      border: Border(
      left: BorderSide(color: Color(0xffE0115F), width: 1.5),
      bottom: BorderSide(color: Color(0xffE0115F), width: 1.5),
      top: BorderSide(color: Color(0xffE0115F), width: 1.5),
      right: BorderSide(color: Color(0xffE0115F), width: 1.5)
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
    ); 
  }   

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F3F8),
      appBar: AppBar(
        leading: IconButton(
          color: Color(0xffE0115F),
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
            PopupMenuButton<int>(
              // color: Colors.white,
              icon: Icon(Icons.more_vert, color: Color(0xffE0115F),),
              onSelected: (value) {
                // handleMenuSelection(value); 
              },
              itemBuilder: (context) => [
              PopupMenuItem(
                  value: 2,
                  child: Text("Add New"),
                ),
              ],
            )
          ],
      ),
      body: Container(
        child: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Column(children: <Widget>[
              CustomTextFormField('Name of Staff', onSave),
              SizedBox(height: 10),
              CustomTextFormField('Email', onSave),
              SizedBox(height: 10),
              CustomTextFormField('Address', onSave),
              SizedBox(height: 10),
              CustomTextFormField('Phone No.', onSave),
              SizedBox(height: 10),
              PasswordTextFormField('Password', onSave),
              SizedBox(height: 10),
              ListTile(
                title: Text('Staff Image', style: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 20),
              // staff image
              Row(children: <Widget>[
                InkWell(
                  onTap: () {

                  },
                  highlightColor: Colors.blue,
                  splashColor: Colors.blue,
                  child:Container(
                  height: 32,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: customButtonDecoration(),
                    child: Center(child: Text('Select File', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff6619EA)))),
                  )
                )
              ],),
              SizedBox(height: 10),
              CustomTextFormField('Select Staff Location.', onSave),
              SizedBox(height: 10),
           ],)
        
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            child: Column(
              children: <Widget>[
              ListTile(
              title: Text('Select Staff Access Rights', style: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 10),
              ListTile(
              title: Text('Access to Sales Register', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('Online Pos', true, updateOnlinePosSwitch, key: online_pos_key),
              SizedBox(height: 10),
              ListItem('All Sales Reports', false, updateAllSalesReportsSwitch, key: sales_report_key),
              SizedBox(height: 10),
              ListTile(
                title: Text('Access to Customers', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('View Customers', true, updateViewCustomerSwitch, key: view_customer_key),
              SizedBox(height: 10),
              ListItem('Add/Edit Customer', true, updateEditCustomerSwitch, key: edit_customer_key),
              SizedBox(height: 10),
              ListTile(
                title: Text('Access to Suppliers', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('View Suppliers', true, updateViewSuppliersSwitch, key: view_suppliers_key),
              SizedBox(height: 10),
              ListItem('Add/Edit Suppliers', true, updateEditSuppliersSwitch, key: edit_suppliers_key),
              SizedBox(height: 10),
              ListItem('Access to Product List', true, updateProductAccessSwitch, key: product_access_key),
              SizedBox(height: 10),
              ListItem('Add Products', false, updateAddProductSwitch, key: add_product_key),
              SizedBox(height: 10),
              ListItem('View Cost price', false, updateViewCostPriceSwitch, key: view_cost_price_key),
              SizedBox(height: 10),
              ListItem('Edit Product/Service', false, updateEditProductSwitch, key: edit_product_key),
              SizedBox(height: 10),
              ListItem('Restock Product', false, updateRestockProductSwitch, key: restock_product_key),
              SizedBox(height: 10),
              ListItem('Delete Product/Service', false, updateDeleteProductSwitch, key: delete_product_key),
              SizedBox(height: 10),
              ListTile(
                title: Text('Access to Staff', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('Add/Edit Staff', false, updateAddEditStaffSwitch, key: add_edit_staff_key),
              SizedBox(height: 10),
              ListItem('View Staff', false, updateViewSwitch, key: view_staff_key),
              SizedBox(height: 10),
              ListTile(
                title: Text('Access to Reporting', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('Sales Report', false, updateSalesReportSwitch, key: sales_report_access_key),
              SizedBox(height: 10),
              ListItem('Inventory Report', false, updateInventoryReportSwitch, key: inventory_report_key),
              SizedBox(height: 10),
              ListItem('Expense Report', false, updateExpenseReportSwitch, key: expense_report_key),
              SizedBox(height: 10),
              ListTile(
                title: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:'Access to Profile',    
                        style: CustomTheme.titleLight
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -2),
                        child: Text(
                          '(Allow Staff to Edit his/her Details)',
                          //superscript is usually smaller in size
                          textScaleFactor: 0.6,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ]),
                )
                // 
              ),
              SizedBox(height: 20),
              ListItem('Update Profile', true, updateProfileUpdateSwitch, key: update_profile_key),
              SizedBox(height: 10),
              ListTile(
                title: Text('Access to Expense', style: CustomTheme.titleLight),
              ),
              SizedBox(height: 20),
              ListItem('Add/Edit Expense', true, updateAddEditExpenseSwitch, key: add_edit_expense_key),
              SizedBox(height: 10),
              ListItem('View Expense', true, updateViewExpenseSwitch, key: view_expense_key),
              SizedBox(height: 40),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.35,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Color(0xffCF0566),
                onPressed: () {},
                child: Text('Save', style: TextStyle(color: Colors.white))
              ,),
              SizedBox(height: 60),
            ],)
          
          )
        ],)
      )
    );
    
  }
}