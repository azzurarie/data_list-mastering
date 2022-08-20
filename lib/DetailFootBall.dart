import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail({Key? key, required this.name, required this.stadium }) : super(key: key);
  String name, stadium;

  @override
  State<Detail> createState() => _DetailState();
}

Widget textView(String name, Color colors){
  return Container(
    child: Text(name, style: TextStyle(color: colors),),
  );
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Detail"),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textView(widget.name, Colors.black87),
      ]
          )
        ]
      ),
    ));
  }

}
