import 'package:flutter/material.dart';
import '../movies_app_screen/MoviesAppScreen.dart';

class MoviePage extends StatefulWidget {
  final title, rate, imgPath;
  MoviePage({this.title,this.rate,this.imgPath});
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: Color(0XFF1C262f),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
               height: size.height*1.6,
                child: Stack(
                  children: <Widget>[
                    Image.asset(widget.imgPath,scale: .70,),
                    IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,) ,
                        onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>MoviesAppScreen()
                      ));
                        }),
                    Container(
                      margin: EdgeInsets.only(top: size.height *0.7 ),
                      height: 650,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('يبدأ باتمان فى محاربة العدو الجديد (الجوكر) الذي يسعى لنشر الذعر والشر في جوثام، '
                                'وإثبات أن العيش بدون قواعد أفضل، مما يؤدي لصراع بين الاثنين يشترك'
                                ' فيه المفتش جوردن والمدعى العام هارفي دينت وراشيل صديقة بروس وين',
                               textAlign: TextAlign.right ,
                              style: TextStyle(
                                height: 1.4,
                                fontWeight: FontWeight.w700,
                                fontSize: 17,

                              ),),
                          ),
                          SizedBox(height: 8,),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'الإنجليزية - الولايات المتحدة الأمريكية',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.3
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'اللغة - البلد',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'يجب إرشاد الآباء, لا يناسب الأطفال أقل من 13 سنة',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'التصنيف',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      ' أكشن - جريمة - إثارة - دراما',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'النوع ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          widget.rate,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        Icon(Icons.star,color:Color(0XFFFFD700),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'التقييم ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      '02:32:14',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'المدة ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      '1080p - BluRay - منذ عامين',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'الجودة ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 240,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'مترجم بواسطة د/علي طلال',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      color: Colors.white
                                    ),
                                    child: Text(
                                      'الترجمة ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){},
                                color: Colors.blueAccent,
                                child: Row(
                                  children: <Widget>[
                                    Text('Download',style: TextStyle(color: Colors.white),),
                                    Icon(Icons.file_download,color: Colors.white)
                                  ],
                                ),
                              ),
                              FlatButton(
                                onPressed: (){},
                                color: Colors.green,
                                child: Row(
                                  children: <Widget>[
                                    Text('Watch Now',style: TextStyle(color: Colors.white),),
                                    Icon(Icons.cloud_download,color: Colors.white,)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/actors/c.jpg'),
                                  ),
                                  SizedBox(width: 4,),
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Bruce Wayne\n',
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                          TextSpan(
                                              text: 'Christian Bale',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          )
                                        ]
                                    ),
                                  ) ,
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/actors/h.jpg'),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Joker\n',
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                          TextSpan(
                                              text: 'Heath Ledger',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          )
                                        ]
                                    ),
                                  ) ,
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage('assets/actors/k.jpg'),
                                    ),
                                    SizedBox(width: 4,),
                                    RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'Scarecrow\n',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                )
                                            ),
                                            TextSpan(
                                                text: 'Cillian Murphy',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                )
                                            )
                                          ]
                                      ),
                                    ) ,
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/actors/m.jpg'),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Lucius Fox\n',
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                          TextSpan(
                                              text: 'Morgan Freeman',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          )
                                        ]
                                    ),
                                  ) ,
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),),
            ],
          )
        ],
      ),
    );
  }
}
