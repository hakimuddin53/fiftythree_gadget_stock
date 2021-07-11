import 'package:fiftythree_gadget_stock/pages/view/purchase_legder.dart';
import 'package:fiftythree_gadget_stock/pages/view/sales_ledger.dart';
import 'package:fiftythree_gadget_stock/pages/view/stock.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          // _createDrawerItem(
          //   icon: Icons.contacts,
          //   text: 'Dealer',
          //   onTap: () => Navigator.of(context).push(
          //     MaterialPageRoute(
          //       settings: RouteSettings(name: "/Stock"),
          //       builder: (context) => Stock(),
          //     ),
          //   ),
          // ),
          _createDrawerItem(
              icon: Icons.event,
              text: 'Purchase Ledger',
              onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: "/PurchaseLedger"),
                      builder: (context) => PurchaseLedger(),
                    ),
                  )),
          _createDrawerItem(
            icon: Icons.note,
            text: 'Sales Ledger',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                settings: RouteSettings(name: "/MyHomePage"),
                builder: (context) => MyHomePage(),
              ),
            ),
          ),
          Divider(
            color: Colors.teal.shade100,
            thickness: 1.0,
          ),
          _createDrawerItem(
            icon: Icons.note,
            text: 'Logout',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                settings: RouteSettings(name: "/Stock"),
                builder: (context) => Stock(),
              ),
            ),
          ),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/drawer_header_background.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("53 Gadget",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
