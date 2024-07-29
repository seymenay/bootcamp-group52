import 'package:flutter/foundation.dart';
import '../api_service.dart';

class WishlistProvider with ChangeNotifier {
  final List<Movie> _wishlist = [];

  List<Movie> get wishlist => _wishlist;

  void addMovie(Movie movie) {
    if (kDebugMode) {
      print('Adding movie to wishlist: ${movie.title}');
    }
    if (!_wishlist.contains(movie)) {
      _wishlist.add(movie);
      notifyListeners();
      if (kDebugMode) {
        print('Movie added to wishlist: ${movie.title}');
      }
    } else {
      if (kDebugMode) {
        print('Movie already in wishlist: ${movie.title}');
      }
    }
  }

  void removeMovie(Movie movie) {
    if (kDebugMode) {
      print('Removing movie from wishlist: ${movie.title}');
    }
    if (_wishlist.contains(movie)) {
      _wishlist.remove(movie);
      notifyListeners();
      if (kDebugMode) {
        print('Movie removed from wishlist: ${movie.title}');
      }
    } else {
      if (kDebugMode) {
        print('Movie not found in wishlist: ${movie.title}');
      }
    }
  }

  bool isInWishlist(Movie movie) {
    return _wishlist.contains(movie);
  }
}
