 
import 'package:ecobankclone/component/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecobankclone/component/cardtype.dart';

import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/homepage.dart";

class CardServices extends StatefulWidget {
  const CardServices({super.key});

  @override
  State<CardServices> createState() => _CardServicesState();
}

class _CardServicesState extends State<CardServices> {
  late double width, height;

    int _selected = 0;
  void _itemTapped(clicked){
    setState((){
      _selected = clicked;
    });
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff004466),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('./assets/image6.jpg'),
          ),
        ),
        title: Text('Card Services'),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          Image(width: 45, height: 45,
            image: AssetImage('./assets/flag.png')),
            Icon(Icons.arrow_drop_down, size: 40, color: Color.fromARGB(255, 32, 148, 243),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: ListView(children: [ SizedBox(height: 10,),
             CardType(icon1: Icons.card_travel, icon_color: Colors.greenAccent, text1: 'Virtual Cards'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.credit_card, icon_color:  Color(0xff005DAA), text1: 'Debit Cards'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.settings, icon_color:  Color(0xff005DAA), text1: 'Manage Attaeched Cars'), SizedBox(height: 15,),
             
              
             CardType(icon1: Icons.card_travel_outlined, icon_color: Colors.greenAccent, text1: 'Travel Notification'), SizedBox(height: 15,),
              
             CardType(icon1: Icons.credit_card_off, icon_color: Color(0xff005DAA), text1: 'Credit Card Repayment'), SizedBox(height: 15,),
           
             CardType(icon1: Icons.credit_card_outlined, icon_color:  Color(0xff005DAA), text1: 'Prepaid Card TopUp'), SizedBox(height: 15,),
             
        ],),
      ),

 // bottomNavigationBar: BottomAppBar(child: BottomNav(),),


   bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selected,
    selectedItemColor: Color(0xff005DAA),
    selectedIconTheme: IconThemeData(color: Color(0xff005DAA),),
    onTap: _itemTapped, 
    type: BottomNavigationBarType.fixed,
    items: [
    BottomNavigationBarItem(icon: GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));},
      child: Icon(Icons.home_outlined, color: Colors.black26, size: 40,)), label: 'HOME'),

    BottomNavigationBarItem(icon: GestureDetector(
       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CardServices(),));},
      child: Icon(Icons.credit_card, color: Colors.black26, size: 40,)), label: 'CARDS'),

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