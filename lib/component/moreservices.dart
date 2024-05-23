import 'package:flutter/material.dart';
import 'package:ecobankclone/component/cardtype.dart';


import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/homepage.dart";
class MoreServices extends StatefulWidget {
  const MoreServices({super.key});

  @override
  State<MoreServices> createState() => _MoreServicesState();
}

class _MoreServicesState extends State<MoreServices> {
      int _selected = 0;
  void _itemTapped(clicked){
    setState((){
      _selected = clicked;
    });
  }
  @override
  Widget build(BuildContext context) {
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
        title: Text('More Services'),
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
             CardType(icon1: Icons.check_box_outline_blank_rounded, icon_color: Color(0xff005DAA), text1: 'Settings'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.settings, icon_color:  Color(0xff005DAA), text1: 'Manage Beneficiaris'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.save_alt_sharp, icon_color:  Color(0xff005DAA), text1: 'Loans and Deposits'), SizedBox(height: 15,),
             
             
             CardType(icon1: Icons.money, icon_color: Colors.greenAccent, text1: 'Cheque Services'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.note_add_outlined, icon_color: Color(0xff005DAA), text1: 'Full Statement'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.cases_outlined, icon_color:  Color.fromARGB(255, 41, 240, 174), text1: 'Legal'), SizedBox(height: 15,),
            
             CardType(icon1: Icons.person_pin_circle, icon_color: Color(0xff005DAA), text1: 'Locate Us'), SizedBox(height: 15,),
             
             CardType(icon1: Icons.person, icon_color:  Color(0xff005DAA), text1: 'Contact Us'), SizedBox(height: 15,),
            

        ],),
      ),


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