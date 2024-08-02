import 'package:flutter/material.dart';
import '../api_service.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Movie> _favorites = [];

  List<Movie> get favorites => _favorites;

  void addMovie(Movie movie) {
    if (!_favorites.contains(movie)) {
      _favorites.add(movie);
      notifyListeners();
    }
  }

  void removeMovie(Movie movie) {
    if (_favorites.contains(movie)) {
      _favorites.remove(movie);
      notifyListeners();
    }
  }

  bool isInFavorites(Movie movie) {
    return _favorites.contains(movie);
  }
}
