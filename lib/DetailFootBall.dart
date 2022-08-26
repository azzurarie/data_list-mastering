import 'package:data_list/PremiereLeagueModel.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail({Key? key, required this.teams }) : super(key: key);
  Teams teams;

  @override
  State<Detail> createState() => _DetailState();
}

Widget textView(String name){
  return Container(
    child: Text(name, style: TextStyle(color: Colors.black),),
  );
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.teams.strTeam.toString()),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
            child:Column(
              children: [
                Image.network(widget.teams.strTeamBadge.toString(), height: 90, width: 90,),
                SizedBox(height: 15,),
                textView(widget.teams.strTeam.toString()),
                SizedBox(height: 10,),
                textView(widget.teams.strDescriptionEN.toString()),
              ],
            ),
        ),
      )
    );
  }

}
