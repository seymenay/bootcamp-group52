import 'package:flutter/foundation.dart';
import '../api_service.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Movie> _favorites = [];

  List<Movie> get favorites => _favorites;

  void addMovie(Movie movie) {
    if (kDebugMode) {
      print('Adding movie to favorites: ${movie.title}');
    }
    if (!_favorites.contains(movie)) {
      _favorites.add(movie);
      notifyListeners();
      if (kDebugMode) {
        print('Movie added to favorites: ${movie.title}');
      }
    } else {
      if (kDebugMode) {
        print('Movie already in favorites: ${movie.title}');
      }
    }
  }

  void removeMovie(Movie movie) {
    if (kDebugMode) {
      print('Removing movie from favorites: ${movie.title}');
    }
    if (_favorites.contains(movie)) {
      _favorites.remove(movie);
      notifyListeners();
      if (kDebugMode) {
        print('Movie removed from favorites: ${movie.title}');
      }
    } else {
      if (kDebugMode) {
        print('Movie not found in favorites: ${movie.title}');
      }
    }
  }

  bool isInFavorites(Movie movie) {
    return _favorites.contains(movie);
  }
}
