import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wishlist_provider.dart';
import '../api_service.dart';
import 'movie_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);
    List<Movie> wishlist = wishlistProvider.wishlist;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: wishlist.isEmpty
          ? const Center(child: Text('No movies in your wishlist.'))
          : ListView.builder(
              itemCount: wishlist.length,
              itemBuilder: (context, index) {
                final movie = wishlist[index];
                return ListTile(
                  leading: Image.network(movie.posterPath),
                  title: Text(movie.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Release Date: ${movie.releaseDate}'),
                      Text('Rating: ${movie.rating}'),
                      Text('Genres: ${movie.genres.join(', ')}'),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailScreen(movie: movie),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}