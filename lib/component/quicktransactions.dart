import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuickTransactions extends StatefulWidget {
  const QuickTransactions({super.key, required this.icon, required this.text, this.icon_color});

  final dynamic icon;
  final String text;
  final dynamic icon_color;

  @override
  State<QuickTransactions> createState() => _QuickTransactionsState();

}

class _QuickTransactionsState extends State<QuickTransactions> {
  late double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;    
    return FittedBox( fit: BoxFit.contain,
      child: Container( margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 12), 
       height: 60,
        width: width*.43, 
        //margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), 
            border: Border.all(color: Color.fromARGB(255, 201, 200, 200))),
            child: Expanded(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon( widget.icon, color:  widget.icon_color ??  Colors.blue[800], size: 30),
              Text(widget.text)
                      ],),
            ),
          ),
    );  
  }
}