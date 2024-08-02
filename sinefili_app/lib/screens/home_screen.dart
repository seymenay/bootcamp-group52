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
        backgroundColor: const Color(0xFF15141F),
        title: const Text('Wishlist', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: const Color(0xFF15141F),
        child: wishlist.isEmpty
            ? const Center(child: Text('No movies in your wishlist.', style: TextStyle(color: Colors.white)))
            : ListView.builder(
                itemCount: wishlist.length,
                itemBuilder: (context, index) {
                  final movie = wishlist[index];
                  return ListTile(
                    leading: Image.network(movie.posterPath),
                    title: Text(movie.title, style: const TextStyle(color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Release Date: ${movie.releaseDate}', style: const TextStyle(color: Colors.white)),
                        Text('Rating: ${movie.rating}', style: const TextStyle(color: Colors.white)),
                        Text('Genres: ${movie.genres.join(', ')}', style: const TextStyle(color: Colors.white)),
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
      ),
    );
  }
}
