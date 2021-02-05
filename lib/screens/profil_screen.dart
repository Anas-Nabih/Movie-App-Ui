import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class ProfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1B2C3B),
      appBar: AppBar(
        backgroundColor: Color(0XFF1B2C3B),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              maxRadius: 60,
              backgroundImage: AssetImage('assets/Anas.jpg'),
            ),
          ),
          SizedBox(height: 5,),
          Text("Anas Nabih", style: TextStyle(
              color: Colors.grey[100],
              fontWeight: FontWeight.bold,
            fontSize: 24
          ),),
          Text("anas7nabih@gmail.com", style: TextStyle(color: Colors.grey[400]),),
          SizedBox(height: 10,),
          Container(
            height: 30,
            width: 240,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text('Upgrade To PRO',style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),)),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: Container(
              height: 240,
              child: ListView(
                children: <Widget>[
                  ProfilItemButton(icon:LineAwesomeIcons.user_shield,title: "Privacy",hasNavigation: true,),
                  ProfilItemButton(icon:LineAwesomeIcons.history,title: "Purchase History",hasNavigation: true,),
                  ProfilItemButton(icon:LineAwesomeIcons.question_circle,title: "Help & Support",hasNavigation: true,),
                  ProfilItemButton(icon:LineAwesomeIcons.cog,title: "Settings",hasNavigation: true,),
                  ProfilItemButton(icon:LineAwesomeIcons.user_plus,title: "Invite a Friend",hasNavigation: true,),
                  ProfilItemButton(icon:LineAwesomeIcons.alternate_sign_out,title: "Log Out",hasNavigation: false,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class ProfilItemButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool hasNavigation ;

  ProfilItemButton({this.title,this.icon,this.hasNavigation = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(left: 24,right: 24,bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blueGrey,
      ),
      child: Row(
        children: <Widget>[
          Icon (this.icon,size: 25,color: Colors.white,),
          SizedBox(width: 20,),
          Text(title,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20
          ),),
          Spacer(),
          if (this.hasNavigation)
          Icon(LineAwesomeIcons.angle_right,size: 23,color: Colors.white,),
          //Text(title),
        ],
      ),
    );
  }
}

