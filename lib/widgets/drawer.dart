import 'package:flutter/material.dart';
import 'package:kubico/src/global/const-global.dart';

class DrawerWidget extends StatelessWidget {

  List<MenuDrawer> _options = [
    MenuDrawer(Icons.home, "Home"),
    MenuDrawer(Icons.person, "Profile"),
    MenuDrawer(Icons.location_on, "Nearby me "),
    MenuDrawer(Icons.favorite, "Favorites"),
    MenuDrawer(Icons.notification_important, "Notifications"),
    MenuDrawer(Icons.edit, "Promotions"),
    MenuDrawer(Icons.settings, "Settings"),
    MenuDrawer(Icons.help, "Help"),
    MenuDrawer(Icons.exit_to_app, "Logout")
  ];

  Widget menuItem(IconData icon, String nome) {
    return Container(
      margin: EdgeInsets.only(right: 50, bottom: 5, top: 5),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30)
        )
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 40,),
          Icon(icon, color: colorPrimary,),
          SizedBox(width: 20,),
          Text(
            nome,
            style: TextStyle(
              color: colorPrimary,
              fontSize: 17.0,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: colorPrimary,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
              ),
              title: Text(
                "Dorivaldo dos Santos",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
              subtitle: Text(
                "dorivaldo.santos@df.co.ao",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: .2,
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _options.length,
              itemBuilder: (context, index) {
                return menuItem(_options[index].iconData, _options[index].name);
              },
            )
          ],
        ),
      ),
    );
  }
}



class MenuDrawer {
  final IconData iconData;
  final String   name;
  MenuDrawer(this.iconData, this.name);
}