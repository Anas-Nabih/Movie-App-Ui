class MoviesModel{
  String movieTitle;
  String movieRate;
  String movieAsset;

  MoviesModel({this.movieTitle,this.movieRate,this.movieAsset});

  static List<MoviesModel> topRatedMOV = [
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
    MoviesModel(movieTitle:"interstellar",movieRate: '8.3',movieAsset: 'assets/Int.jpg'),
    MoviesModel(movieTitle:"Avengers",movieRate: '7.8',movieAsset: 'assets/Avn.jpg'),
    MoviesModel(movieTitle:"Bad Boys 3",movieRate: '8.1',movieAsset: 'assets/Bb.jpg'),
    MoviesModel(movieTitle:"The Dark Night",movieRate: '9.4',movieAsset: 'assets/Dn.png'),
    MoviesModel(movieTitle:"Inception",movieRate: '8.7',movieAsset: 'assets/Inc.jpg'),
    MoviesModel(movieTitle:"Assassin's Creed",movieRate: '7.3',movieAsset: 'assets/AC.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
  ];

  static List<MoviesModel> recdMOV = [
    MoviesModel(movieTitle:"Jumanji 3",movieRate: '8.5',movieAsset: 'assets/recommend/ju.jpg'),
    MoviesModel(movieTitle:"1917",movieRate: '8.3',movieAsset: 'assets/recommend/1917.jpg'),
    MoviesModel(movieTitle:"Harry Potter",movieRate: '7.8',movieAsset: 'assets/recommend/HP.jpg'),
    MoviesModel(movieTitle:"The Call Wild",movieRate: '8.1',movieAsset: 'assets/recommend/cw.jpg'),
    MoviesModel(movieTitle:"Angel has fallen",movieRate: '9.4',movieAsset: 'assets/recommend/AF.jpg'),
    MoviesModel(movieTitle:"Allied",movieRate: '8.7',movieAsset: 'assets/recommend/Al.jpg'),
    MoviesModel(movieTitle:"Parasite",movieRate: '7.3',movieAsset: 'assets/recommend/pa.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
  ];

  static List<MoviesModel> series = [
    MoviesModel(movieTitle:"Prison break",movieRate: '8.5',movieAsset: 'assets/series/pr.jpg'),
    MoviesModel(movieTitle:"Dark",movieRate: '8.3',movieAsset: 'assets/series/dr.jpg'),
    MoviesModel(movieTitle:"Breaking Bad",movieRate: '7.8',movieAsset: 'assets/series/bb.jpeg'),
    MoviesModel(movieTitle:"Lacas de papel",movieRate: '8.1',movieAsset: 'assets/series/lcdp.jpg'),
    MoviesModel(movieTitle:"Chernobyl",movieRate: '9.4',movieAsset: 'assets/series/ch.jpg'),
    MoviesModel(movieTitle:"Tokyo Ghoul",movieRate: '8.7',movieAsset: 'assets/series/tg.jpg'),
    MoviesModel(movieTitle:"Attack on tatitan",movieRate: '7.3',movieAsset: 'assets/series/At.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
    MoviesModel(movieTitle:"Joker",movieRate: '8.5',movieAsset: 'assets/Joker.jpg'),
  ];

}