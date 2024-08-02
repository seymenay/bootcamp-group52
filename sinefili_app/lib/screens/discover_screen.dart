import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../api_service.dart';
import 'movie_detail_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  List<Movie> _movies = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMovies(null); // Başlangıçta fetchMovies'e null gönder
  }

  void _fetchMovies(String? query) async {
    setState(() {
      _isLoading = true;
    });
    try {
      final movies = await _apiService.fetchMovies(query);
      setState(() {
        _movies = movies;
        _isLoading = false;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _filterMovies(String query) {
    _fetchMovies(query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF15141F),
        title: const Text('Discover', style: TextStyle(color: Colors.white)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search for movie or filter by genre...',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: _filterMovies,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFF15141F),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _movies.length,
                itemBuilder: (context, index) {
                  final movie = _movies[index];
                  return ListTile(
                    leading: Image.network(movie.posterPath),
                    title: Text(movie.title, style: const TextStyle(color: Colors.white)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Release Date: ${movie.releaseDate}', style: const TextStyle(color: Colors.white)),
                        Text('Rating: ${movie.rating.toInt()}/10', style: const TextStyle(color: Colors.white)),
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
