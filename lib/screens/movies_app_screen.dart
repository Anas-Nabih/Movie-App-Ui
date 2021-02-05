import 'package:flutter/material.dart';
import 'package:movie_app_ui/screens/profil_screen.dart';
import 'package:movie_app_ui/screens/movie_page.dart';

class MoviesAppScreen extends StatefulWidget {
  @override
  _MoviesAppScreenState createState() => _MoviesAppScreenState();
}

class _MoviesAppScreenState extends State<MoviesAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1C262f),
      appBar: AppBar(
        backgroundColor: Color(0XFF1B2C3B),
        elevation: 0.0,
        title: Text('Movie App'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.account_circle),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return ProfilScreen();
              }
          ));
        },),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 40,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('All',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Action',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Advanture',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Drama',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Comdie',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Romantic',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Real Life',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('War',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Horror',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text('Science Fiction',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Top Rated',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              height: 250.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: MovieCard('Joker', '8.5/10', 'assets/Joker.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('interstellar', '8.3/10', 'assets/Int.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Avengers', '7.8/10', 'assets/Avn.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Bad Boys 3', '8.1/10', 'assets/Bb.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('The Dark Night', '9.4/10', 'assets/Dn.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Inception', '8.7.5/10', 'assets/Inc.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard("Assassin's Creed", '7.3/10', 'assets/AC.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Recommendation for you',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              height: 250.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: MovieCard('Jumanji 3', '6.7/10', 'assets/recommend/ju.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('1917', '8.3/10', 'assets/recommend/1917.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Harry Potter', '8.7/10', 'assets/recommend/HP.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('The Call Wild', '6.8/10', 'assets/recommend/cw.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Angel has fallen', '8.5/10', 'assets/recommend/AF.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Allied ', '8.9/10', 'assets/recommend/Al.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Parasite', '7.3/10', 'assets/recommend/pa.jpg'),
                  ),

                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Series',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              height: 250.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: MovieCard('Prison break', '8.9/10', 'assets/series/pr.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Dark', '8.3/10', 'assets/series/dr.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Breaking Bad', '8.8/10', 'assets/series/bb.jpeg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Lacas de papel', '8.6/10', 'assets/series/lcdp.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Chernobyl', '8.3/10', 'assets/series/ch.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard('Tokyo Ghoul', '8.1/10', 'assets/series/tg.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: MovieCard("Attack on tatitan", '8.9/10', 'assets/series/At.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MovieCard(String title, String rate , String imgPath,){
    // discription = "" ;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context){
            return MoviePage(title: title,imgPath: imgPath,rate: rate,);
          }
        ));
      },
      child: Column(
        children: <Widget>[
          Card(
            child: Image.asset(imgPath,fit: BoxFit.fill,width: 140,height: 180,),
            elevation: 0.0,
          ),
          SizedBox(height: 4.0,),
          Text(title, style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 4,),
          Text(rate,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18
          ),),
        ],),
    );
  }
}