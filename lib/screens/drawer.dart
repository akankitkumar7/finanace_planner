import 'package:flutter/material.dart';
class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text("Ankit Kumar"),
              accountEmail: Text("ak4752970@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
            ),
          ),
          ListTile(
            title:Text("Profile"),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title:Text("Share"),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title:Text("Statistics"),
            leading: Icon(Icons.bar_chart),
          ),
          ListTile(
            title:Text("Income"),
            leading: Icon(Icons.currency_rupee),
          ),
          ListTile(
            title:Text("Expenditure"),
            leading: Icon(Icons.currency_rupee),
          ),
          ListTile(
            title:Text("Recipient"),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title:Text("Logout",style:  TextStyle(color: Colors.red),),
            leading: Icon(Icons.logout,color: Colors.red,),
          ),
        ],
      ),
    );
  }
}
