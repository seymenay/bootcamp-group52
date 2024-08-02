import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api_service.dart';
import '../providers/favorites_provider.dart'; // Import the FavoritesProvider
import 'movie_detail_screen.dart'; // Import the MovieDetailScreen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF15141F), // AppBar color
      ),
      body: Consumer<FavoritesProvider>( // Use Consumer to listen to favorites changes
        builder: (context, favoritesProvider, child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFF15141F), // Background color
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Profile Picture
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.deepPurple, width: 4),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage('https://example.com/profile_picture.jpg'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Username
                    const Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white), // White text color
                    ),
                    const SizedBox(height: 8),
                    // Stats Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildStatColumn('100', 'Followers'),
                        const SizedBox(width: 24),
                        _buildStatColumn('80', 'Following'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Favorites Section
                    _buildFavoritesSection(favoritesProvider.favorites, context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Build Statistic Column
  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)), // White text color
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(color: Colors.white60)), // White text color
      ],
    );
  }

  // Build Favorites Section
  Widget _buildFavoritesSection(List<Movie> favorites, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Favorites'),
        if (favorites.isEmpty)
          const Text(
            'No favorites yet.',
            style: TextStyle(color: Colors.white60),
          )
        else
          ...favorites.map((movie) => ListTile(
                leading: Image.network(
                  movie.posterPath,
                  width: 50,
                  height: 75,
                  fit: BoxFit.cover,
                ),
                title: Text(movie.title, style: const TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailScreen(movie: movie),
                    ),
                  );
                },
              )),
      ],
    );
  }

  // Build Section Title
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white), // White text color
      ),
    );
  }
}
