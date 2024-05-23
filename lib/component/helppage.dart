import 'package:flutter/material.dart';


import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/homepage.dart";
class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
    int _selected = 0;
  void _itemTapped(clicked){
    setState((){
      _selected = clicked;
    });
  }
 late double width, height;
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
        title: Text('Help'),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          Image(width: 45, height: 45,
            image: AssetImage('./assets/flag.png')),
            Icon(Icons.arrow_drop_down, size: 40, color: Color.fromARGB(255, 32, 148, 243),),
        ],
      ),


      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            CircleAvatar(backgroundImage: AssetImage('./assets/image6.jpg'),
            radius: 100,
            ),
           // Container(height: 170, width: 170, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),),
            SizedBox(height: 25,),
            Text('Hello, John', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), SizedBox(height: 6,),
            Text('How can we help you today?', style: TextStyle(fontSize: 18),), SizedBox(height: 30,),
            ElevatedButton(onPressed: (){}, child: Text('Let\'s Chat', style: TextStyle(fontSize: 20, color: Colors.white),),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 52, 255, 11),
              onPrimary: Colors.white,
              fixedSize: Size(170, 40),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
            ),
            ),
          ],),
        ),
        SizedBox(height: 40,),
        
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Contact Us', style: TextStyle(color: Color.fromARGB(255, 32, 148, 243), fontSize: 18),),
            SizedBox(height: 15,),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(padding: EdgeInsets.all(12),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.circular(6)),
                child: Icon(Icons.email_outlined, size: 20, color: Color(0xff005DAA),)),
          
                SizedBox(width: 6,),
          
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EMAIL US', style: TextStyle(color: Colors.black26),),
                    Text('assist@ecobank.com')
                  ],
                ),
            ],),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(padding: EdgeInsets.all(12),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.circular(6)),
                child: Icon(Icons.circle_notifications_sharp, size: 20, color: Color(0xff005DAA),)),
          
                SizedBox(width: 6,),
          
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EMAIL US', style: TextStyle(color: Colors.black26),),
                    Text('https://www.ecobank.com')
                  ],
                ),
            ],),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),



            
          ],),
        )
      ],),

   bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selected,
   // selectedItemColor: ,
   // selectedIconTheme: IconThemeData(color: Color(0xff005DAA),),
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