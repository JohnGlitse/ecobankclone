import "package:ecobankclone/component/cardservices.dart";
import "package:ecobankclone/component/helppage.dart";
import "package:ecobankclone/component/moreservices.dart";
import "package:ecobankclone/component/notification.dart";
import "package:ecobankclone/component/quicktransactions.dart";
import"package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return SafeArea(top: true,
      child: Scaffold(
        //#00A651 green color
        // #005DAA blue color
        // #00A8E1 
        //backgroundColor: Color(0xff005DAA),
      
        /// AN APPBAR CONTAINING USER IMAGE, COUNTRY FLAG AND A DROPDOWN 
        appBar: AppBar(
          backgroundColor: Color(0xff004466),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('./assets/image6.jpg'),
            ),
          ),
          //title: Text('John Glitse'),
          centerTitle: true,
          foregroundColor: Colors.white,
          actions: [
            Image(width: 45, height: 45,
              image: AssetImage('./assets/flag.png')),
              Icon(Icons.arrow_drop_down, size: 40, color: Color.fromARGB(255, 32, 148, 243),),
          ],
        ),
      
      
        
         body: Stack(children: [
      Container( padding: EdgeInsets.all(15),
        //width: double.infinity, height: height*1,
        color: Color(0xffffffff),
        child: SizedBox(height: height*1,
          child: ListView(//shrinkWrap: true,
            children: [
              
            SizedBox(height: height*.4,),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('QUICK TRANSACTION', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 32, 148, 243)),),
              Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 32, 148, 243), size: 40,)
            ],),
          
            SizedBox(height: 12,),
            Row(
              children: [
                QuickTransactions(icon: Icons.phone_android_outlined, text: 'Airtime/Data'),
                 QuickTransactions(icon: Icons.compare_arrows_rounded, text: 'Tranfer', icon_color: Color.fromARGB(255, 100, 247, 71),),           
            ],),
      
      
            Row(children: [
                QuickTransactions(icon: Icons.bookmark_outline_outlined, text: 'Pay Bill', icon_color: Color.fromARGB(255, 100, 247, 71),),
                 QuickTransactions(icon: Icons.transfer_within_a_station, text: 'Xpress Cash'),           
            ],),  
      
            Row(children: [
                QuickTransactions(icon: Icons.paypal, text: 'EcobankPay'),
                 QuickTransactions(icon: Icons.call_split_outlined, text: 'Split Paymets'),           
            ],)                  
            // GridView.count(// shrinkWrap: true,
            //    crossAxisCount: 2,
            //    //mainAxisSpacing: 8,
            //    crossAxisSpacing: 8,
            //    physics: ClampingScrollPhysics(),
            //    //mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     QuickTransactions(icon: Icons.phone_android_outlined, text: 'Airtime/Data'),
            //     QuickTransactions(icon: Icons.phone_android_outlined, text: 'Airtime/Data'),
            //     QuickTransactions(icon: Icons.phone_android_outlined, text: 'Airtime/Data'),
            //     QuickTransactions(icon: Icons.phone_android_outlined, text: 'Airtime/Data'),            
            //   ],
            // )
           
          
          ],),
        ),
      ),
         
      Container( padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        width: double.infinity, height: height*.32,
        color: Color(0xff004466),
        child: ListView(children: [SizedBox(height: 8,),
          Text('Welcome back,', style: TextStyle(color: Color(0xfff1eeee)),), SizedBox(height: 8,),
          Text('John Glitse', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Divider(), SizedBox(height: 8,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('MY ACCOUNTS', style: TextStyle(color: Colors.white, fontSize: 14),),
            Text('VIEW ALL', style: TextStyle(color: Colors.white, fontSize: 14),),
          ],)
        ],),
      ),  
         
      Positioned( top: height*.2, left: width*.06,
        child: Container(
          height: height*.2,
          child: Container(padding: EdgeInsets.all(12),
                 width: width*.88,
                 height: width*.22,
                 decoration: BoxDecoration(
                   color: Color(0xff0077b6),
                   borderRadius: BorderRadius.circular(6)
                 ),
      
                 child: ListView(
                  children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Xpress Account', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),),  
                    Icon(Icons.settings, color: Colors.white, size: 26,),
                  ],),
                  SizedBox(height: 8,),
                  Text('12345678901234', style: TextStyle(color: Colors.white),), SizedBox(height: 9,),
                  SizedBox(height: 8,),
      
                  Container(width: width*.8,
                     padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(6)
                  ),
                    child: Center(child: Text('Show my balalnce', style: TextStyle(fontSize: 18, color: Colors.white),)))
                 ],),
               ),
        ),
      )  
         
         ],),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         bottomNavigationBar: BottomNavigationBar(
      // selectedItemColor: Color(0xff005DAA),
      currentIndex: _selected,
      //showSelectedLabels: false, showUnselectedLabels: false,
      //mouseCursor: MouseCursor.defer,
      //selectedIconTheme: IconThemeData(color: Color(0xff005DAA),),
      onTap: _itemTapped, 
      type: BottomNavigationBarType.fixed,
      items: [
      BottomNavigationBarItem(icon: GestureDetector(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));},
        child: Icon(Icons.home_outlined, color: Colors.black26, size: 35,)), label: 'HOME'),
      
      BottomNavigationBarItem(icon: GestureDetector(
         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CardServices(),));},
        child: Icon(Icons.credit_card, color: Colors.black26, size: 35,)), label: 'CARDS'),
      
      BottomNavigationBarItem(icon: GestureDetector(
         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage(),));},
        child: Icon(Icons.help_outline_outlined, color: Colors.black26, size: 35,)), label: 'HELP'),
      
      BottomNavigationBarItem(icon: GestureDetector(
         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),));},
        child: Icon(Icons.notification_important_outlined, color: Colors.black26, size: 35,)), label: 'NOTIFICATIONS'),
      
      BottomNavigationBarItem(icon: GestureDetector(
         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MoreServices(),));},
        child: Icon(Icons.more_horiz, color: Colors.black26, size: 35,)), label: 'MORE'),
         ]),
      
      ),
    );
  }
}