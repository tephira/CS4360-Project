import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spread/favPage/favView.dart';
import '../friendPage/friendView.dart';
import '../menuPage/menuView.dart';
import '../settingsPage/settingsView.dart';

class userView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: ProfileAppBar(
        appBar: AppBar(),
      ),

      body: Column(
        children: <Widget>[
          Icon(Icons.person, size: 300,),//Placeholder
          Text("Name"),
          Text("User ID"),
          Card(child:
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text("Saved Menus"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => menuView()));
            },
          ),),
          Card(child:
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Favorites'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => favView()));
            },
          ),),
          Card(child:
          ListTile(
            leading: Icon(Icons.people_alt),
            title: Text("Friends"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => friendView()));
            },
          ),),
          Card(child:
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settingsView()));
              },
            ),)
        ],
      )
    );
}
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {

  final AppBar appBar;
  const ProfileAppBar({super.key, required this.appBar});

  //const SearchAppBar({Key key, this.appBar, this.widgets}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Text>[
          Text('Profile')
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}