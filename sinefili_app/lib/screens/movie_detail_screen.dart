import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api_service.dart';
import '../providers/wishlist_provider.dart';
import '../providers/favorites_provider.dart'; // Favoriler için Provider

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);
    var favoritesProvider = Provider.of<FavoritesProvider>(context); // Favoriler Provider
    bool isInWishlist = wishlistProvider.isInWishlist(movie);
    bool isInFavorites = favoritesProvider.isInFavorites(movie); // Favorilere eklenip eklenmediğini kontrol et

    return Scaffold(
      backgroundColor: const Color(0xFF15141F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF15141F),
        title: Text(movie.title, style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white), // Geri butonunun rengini beyaz yapar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    movie.posterPath,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.transparent, // Arka planı şeffaf yapıyoruz
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Release Date: ${movie.releaseDate}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold, // Kalın yapıldı
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Rating: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold, // Kalın yapıldı
                              color: Colors.white,
                            ),
                          ),
                          _buildRatingBar(movie.rating),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Genres: ${movie.genres.join(', ')}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold, // Kalın yapıldı
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Overview:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        movie.overview,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  if (isInWishlist) {
                    wishlistProvider.removeMovie(movie);
                  } else {
                    wishlistProvider.addMovie(movie);
                  }
                },
                icon: Icon(isInWishlist ? Icons.remove : Icons.add),
                label: Text(
                    isInWishlist ? 'Remove from Wishlist' : 'Add to Wishlist'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isInWishlist
                      ? const Color(0xFFff7b75)
                      :  const Color(0xFFFFB864), // Renk kodları düzeltildi
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  if (isInFavorites) {
                    favoritesProvider.removeMovie(movie);
                  } else {
                    favoritesProvider.addMovie(movie);
                  }
                },
                icon: Icon(
                    isInFavorites ? Icons.favorite : Icons.favorite_border),
                label: Text(isInFavorites
                    ? 'Remove from Favorites'
                    : 'Add to Favorites'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isInFavorites
                      ? const Color(0xFFff7b75)
                      :  const Color(0xFFFFB864), // Renk kodları düzeltildi
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBar(double rating) {
    int fullStars = (rating / 2).floor();
    bool hasHalfStar = (rating / 2) - fullStars >= 0.5;

    return Row(
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return const Icon(Icons.star, color: Colors.amber);
        } else if (index == fullStars && hasHalfStar) {
          return const Icon(Icons.star_half, color: Colors.amber);
        } else {
          return const Icon(Icons.star_border, color: Colors.amber);
        }
      }),
    );
  }
}
