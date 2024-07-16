import 'package:flutter/material.dart';
import 'package:movieappwithapi/models/movie.dart';
import 'package:movieappwithapi/utils/movie_parser.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movieList = [
    // "The Shawshank Redemption",
    // "The Godfather",
    // "The Dark Knight",
    // "The Godfather: Part II",
    // "The Lord of the Rings: The Return of the King",
    // "Pulp Fiction",
  ];

  List<Movie> get movieList => _movieList;
//function to fetch data from server and in a function and then display on a screen
  Future<void> loadMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/films.json');

      final movies = MovieParser.parse(jsonString);

      _movieList = movies;

      notifyListeners();
    } catch (e) {
      print('Erro loading movies: $e');
    }
  }
// List<String> loadMovies() {
//   return _movieList;
// }
}