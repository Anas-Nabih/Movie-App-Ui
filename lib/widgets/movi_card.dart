import 'package:flutter/material.dart';
import 'package:movie_app_ui/screens/move_page/MovePage.dart';
Widget MovieCard({
  String title,
  String rate,
  String imgPath,
  BuildContext context
}){
  return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context){
              return MoviePage(title: title,imgPath: imgPath,rate: rate,);
            }
        ));
      },
      child: Container(

        margin: EdgeInsets.only(right: 15,left: 5,top: 4,bottom: 4),
        child: Column(
          children:[
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imgPath,fit: BoxFit.fill,width: 145,height: 180,)),
            SizedBox(height: 4,),
            Text(title, style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 4,),
            Text("$rate / 10",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16
            ),),
          ],),
      ));
}