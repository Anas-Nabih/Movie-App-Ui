import 'package:flutter/material.dart';
import 'package:movie_app_ui/models/MoviesScreenModel.dart';
import 'package:movie_app_ui/screens/movies_app_screen/MoviesAppProvider.dart';
import 'package:movie_app_ui/widgets/build_head_line.dart';
import 'package:movie_app_ui/widgets/movi_card.dart';
import 'package:provider/provider.dart';
import '../../colors.dart';
import '../profil_screen.dart';


class MoviesAppScreen extends StatefulWidget {
  @override
  _MoviesAppScreenState createState() => _MoviesAppScreenState();
}

class _MoviesAppScreenState extends State<MoviesAppScreen> {

  MoviesAppProvider provider = MoviesAppProvider();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>provider,
      child: Consumer<MoviesAppProvider>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: MColors.background_color,
          appBar: AppBar(
            backgroundColor: MColors.background_AppBar_color,
            elevation: 0.0,
            title: Text('Movie App'),
            centerTitle: true,
            leading: IconButton(icon: Icon(Icons.account_circle),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ProfilScreen()
              ));
            },),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
            ],
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 12.0,right: 4,left: 4),
            child: ListView(
              children: <Widget>[
                Container(
                  height:30, width: 350,
                  margin: EdgeInsets.only(bottom: 12),
                  child: ListView.builder(
                    itemCount: provider.category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:  (context, index) => GestureDetector(
                        onTap: ()=> provider.index = index,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          margin: EdgeInsets.only(left: 5),
                          height: 30,
                          decoration: BoxDecoration(
                            color: provider.index == index? Colors.orange:Colors.blueGrey,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(child: Text(provider.category[index],
                            style: TextStyle(color: provider.index == index?Colors.white:Colors.white70,fontSize: 15),)),

                        ),
                      ),),
                ),
                buildHeadLine(text:'Top Rated'),
                Container(
                  height: 250.0,
                  margin: EdgeInsets.only(bottom: 12,top: 12),
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: MoviesModel.topRatedMOV.length,
                      itemBuilder: (context, index) =>
                          MovieCard(
                            context: context,
                            title:  MoviesModel.topRatedMOV[index].movieTitle,
                             imgPath: MoviesModel.topRatedMOV[index].movieAsset,
                              rate: MoviesModel.topRatedMOV[index].movieRate),

                  ),
                ),
                buildHeadLine(text: 'Recommendation for you'),
                Container(
                  height: 250.0,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 12,top: 12),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesModel.topRatedMOV.length,
                    itemBuilder: (context, index) => MovieCard(
                        context: context,
                      title: MoviesModel.recdMOV[index].movieTitle,
                      imgPath:MoviesModel.recdMOV[index].movieAsset,
                      rate: MoviesModel.recdMOV[index].movieRate
                    ),
                  ),
                ),
               buildHeadLine(text: 'Series'),
                Container(
                  height: 250.0,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 12,top: 12),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:MoviesModel.series.length,
                    itemBuilder:(context, index)=>
                        MovieCard(
                          context: context,
                          title: MoviesModel.series[index].movieTitle,
                          imgPath: MoviesModel.series[index].movieAsset,
                          rate: MoviesModel.series[index].movieRate,
                        )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




}