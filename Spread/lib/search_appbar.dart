import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {

  final AppBar appBar;
  const SearchAppBar({super.key, required this.appBar});

  //const SearchAppBar({Key key, this.appBar, this.widgets}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        width: double.infinity,
        height: 30 ,
        color: Colors.white,
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'What are you craving?',
                prefixIcon: Icon(Icons.search)
            ),
          ),
        ),
      ),
      backgroundColor: Colors.greenAccent,
      actions: <Widget>[
        IconButton(onPressed: null,
            icon: Icon(Icons.person))
      ],

    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

