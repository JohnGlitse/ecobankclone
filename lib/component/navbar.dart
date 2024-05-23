import 'package:flutter/material.dart';
import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/homepage.dart";

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
    int _selected = 0;
  void _itemTapped(clicked){
    setState((){
      _selected = clicked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selected,
    selectedItemColor: Color(0xff005DAA),
    selectedIconTheme: IconThemeData(color: Color(0xff005DAA),),
    onTap: _itemTapped, 
    type: BottomNavigationBarType.fixed,
    items: [
    BottomNavigationBarItem(icon: GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));},
      child: Icon(Icons.home, color: Colors.black26, size: 40,)), label: 'HOME'),

    BottomNavigationBarItem(icon: GestureDetector(
       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CardServices(),));},
      child: Icon(Icons.card_travel_outlined, color: Colors.black26, size: 40,)), label: 'CARDS'),

    BottomNavigationBarItem(icon: GestureDetector(
       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage(),));},
      child: Icon(Icons.help_outline_outlined, color: Colors.black26, size: 40,)), label: 'HELP'),

    BottomNavigationBarItem(icon: GestureDetector(
       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),));},
      child: Icon(Icons.notification_important_outlined, color: Colors.black26, size: 40,)), label: 'NOTIFICATIONS'),

    BottomNavigationBarItem(icon: GestureDetector(
       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MoreServices(),));},
      child: Icon(Icons.more_horiz, color: Colors.black26, size: 40,)), label: 'MORE'),
   ]),

    );
  }
}



       
    //   Container(
    //    height: height*1,
    //    color: Colors.white,     
    //   //  child: ListView(children: [
    //   //    Text('Welcome back'),
    //   //    Text('John Glitse'),
    //   //    Divider()
    //   //  ],),
    //  ),

    //  Container(
    //    height: height*.3,
    //    color: Color(0xff005DAA),      
    //    child: ListView(children: [
    //      Text('Welcome back'),
    //      Text('John Glitse'),
    //      Divider()
    //    ],),
    //  ),

      
    //  Container( 
    //   height: width*.4,
    //    child: PageView(
    //     //scrollDirection: Axis.horizontal,
    //      children: [
    //        Container(
    //         ///alignment: Alignment(-1, 1),
    //        // height: width*.3, width: double.infinity,
    //          child: Positioned( top: 100,
    //            child: Container(
    //             margin: EdgeInsets.all(5),
    //             // alignment: Alignment(0, 0),
    //              width: width*.8,
    //              height: width*.2,
    //              decoration: BoxDecoration(
    //                color: Color.fromARGB(255, 32, 148, 243),
    //              ),
    //            ),
    //          ),
       
    //        ),
       
    //           Container(
    //             margin: EdgeInsets.all(5),
    //              //alignment: Alignment(0, 0),
    //              width: width*.8,
    //              height: width*.2,
    //              decoration: BoxDecoration(
    //                color: Color.fromARGB(255, 80, 226, 128),
    //              ),
    //            ),
       
    //      ],
    //    ),
    //  )