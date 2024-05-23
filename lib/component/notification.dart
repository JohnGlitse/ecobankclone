import 'package:flutter/material.dart';

import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/homepage.dart";
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
       int _selected = 0;
  void _itemTapped(clicked){
    setState((){
      _selected = clicked;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eeee),
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



      body: Column(children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Switch off notification', style: TextStyle(fontSize: 20),),
            Icon(Icons.toggle_off, size: 40, color: Color.fromARGB(255, 52, 255, 11),)
          ],),
        ),
        SizedBox(height: 8,),

        Expanded(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
          
          Expanded(
            child: Container(padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NEW NOTIFICATIONS', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 148, 243),),),
                  SizedBox(height: 15,),

                  /// FIRST NOTIFICATION ROW
                  Row(children: [

                      Expanded(flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.05),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ]
                          ),
                          child: Text('E', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 148, 243),),),
                          
                        ),
                      ),
            
                      SizedBox(width: 12,),
                      Expanded(flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('eAlert Notification', style: TextStyle(fontWeight: FontWeight.bold),), SizedBox(height: 4,),
                        
                            
                         Text('Abide with me fast falls the evening tide the darkeness deepens Lord with me abide and when other helpers fail and comfort flee the darkeness deepens Lord with me abide and when other helpers fail and comfort flee '),
                         
                          ],
                        ),
                      ), 
                  ],),
                         Divider(),



                         //// SECOND NOTIFICATION ROW
                  Row(children: [

                      Expanded(flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.05),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ]
                          ),
                          child: Text('E', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 148, 243),),),
                          
                        ),
                      ),
            
                      SizedBox(width: 12,),
                      Expanded(flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('eAlert Notification', style: TextStyle(fontWeight: FontWeight.bold),), SizedBox(height: 4,),
                        
                            
                         Text('Abide with me fast falls the evening tide the darkeness deepens Lord with me abide and when other helpers fail and comfort flee the darkeness deepens Lord with me abide and when other helpers fail and comfort flee '),
                         
                          ],
                        ),
                      ), 
                  ],),
                         Divider(),


                         //// THIRD NOTIFICATION ROW

                  Row(children: [

                      Expanded(flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.05),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ]
                          ),
                          child: Text('E', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 148, 243),),),
                          
                        ),
                      ),
            
                      SizedBox(width: 12,),
                      Expanded(flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('eAlert Notification', style: TextStyle(fontWeight: FontWeight.bold),), SizedBox(height: 4,),
                        
                            
                         Text('Abide with me fast falls the evening tide the darkeness deepens Lord with me abide and when other helpers fail and comfort flee the darkeness deepens Lord with me abide and when other helpers fail and comfort flee '),
                         
                          ],
                        ),
                      ), 
                  ],),
                         Divider()


                         

                ],
              ),
            ),
          )
          ],),
        )


      ],),      


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