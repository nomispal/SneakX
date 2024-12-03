import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             // logo
             DrawerHeader(
               child: Image.asset("lib/images/logoo.png",
                 color: Colors.white,
                 width: 200,
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Divider(
                 color: Colors.grey[900],
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(
                 leading: Icon(Icons.home,color: Colors.white,),
                 title: Text("Home",style: TextStyle(color: Colors.white),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(
                 leading: Icon(Icons.info,color: Colors.white,),
                 title: Text("About",style: TextStyle(color: Colors.white),),
               ),
             ),
           ],
         ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 24.0),
            child: ListTile(
              leading: Icon(Icons.logout,color: Colors.white,),
              title: Text("Logout",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
