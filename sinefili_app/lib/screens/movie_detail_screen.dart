import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api_service.dart';
import '../providers/wishlist_provider.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);
    bool isInWishlist = wishlistProvider.isInWishlist(movie);

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(movie.posterPath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Release Date: ${movie.releaseDate}'),
                  Text('Rating: ${movie.rating}'),
                  Text('Genres: ${movie.genres.join(', ')}'),
                  const SizedBox(height: 10),
                  const Text('Overview:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(movie.overview),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            if (isInWishlist) {
              wishlistProvider.removeMovie(movie);
            } else {
              wishlistProvider.addMovie(movie);
            }
          },
          child: Text(isInWishlist ? 'Remove from Wishlist' : 'Add to Wishlist'),
        ),
      ),
    );
  }
}
