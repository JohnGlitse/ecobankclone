import 'package:flutter/material.dart';

class CardType extends StatefulWidget {
  final dynamic icon1;
  final dynamic icon_color;
  final String text1;
 // final dynamic icon2;

  const CardType({super.key,
  required this.icon1,
  required this.icon_color,
  required this.text1,
 // required this.icon2,

  });

  @override
  State<CardType> createState() => _CardTypeState();
}

class _CardTypeState extends State<CardType> {
  @override
  Widget build(BuildContext context) {
   return  Column(
     children: [
     
     // SizedBox(height: 10,),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(widget.icon1, color: widget.icon_color,),
                    SizedBox(width: 20,),
                    Text(widget.text1, style: TextStyle(fontSize: 20),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black38,),
                )
              ],),

              SizedBox(height: 6,),
              Divider()
     ],
   );

  }
}