import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String popularMoviesUrl = '$baseUrl/movie/popular';
  static const String searchMoviesUrl = '$baseUrl/search/movie';
  static const String genreMoviesUrl = '$baseUrl/discover/movie';
  static const String genreUrl = '$baseUrl/genre/movie/list';
  static const String apiKey = '0e683f857fb0db4c38839c7bda8fcc0f';

  Future<Map<int, String>> fetchGenres() async {
    final response = await http.get(
      Uri.parse('$genreUrl?api_key=$apiKey&language=en-US'),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return {for (var genre in jsonResponse['genres']) genre['id']: genre['name']};
    } else {
      throw Exception('Failed to load genres');
    }
  }

  Future<List<Movie>> fetchMovies(String? query) async {
    final genres = await fetchGenres();
    List<Movie> movies = [];
    int page = 1;
    bool hasMoreMovies = true;

    while (movies.length < 100 && hasMoreMovies) {
      String url;
      
      if (query != null && query.isNotEmpty) {
        final genreId = genres.entries.firstWhere(
          (entry) => entry.value.toLowerCase() == query.toLowerCase(),
          orElse: () => const MapEntry(-1, ''),
        ).key;
        
        if (genreId != -1) {
          url = '$genreMoviesUrl?api_key=$apiKey&language=en-US&with_genres=$genreId&page=$page';
        } else {
          url = '$searchMoviesUrl?api_key=$apiKey&language=en-US&query=$query&page=$page';
        }
      } else {
        url = '$popularMoviesUrl?api_key=$apiKey&language=en-US&page=$page';
      }

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        List<Movie> newMovies = (jsonResponse['results'] as List)
            .map((movie) => Movie.fromJson(movie, genres))
            .toList();

        // Filter out movies with "object progress event" error or other error conditions
        newMovies = newMovies.where((movie) => !movie.hasError).toList();

        if (newMovies.isNotEmpty) {
          movies.addAll(newMovies);
        } else {
          hasMoreMovies = false;
        }
      } else {
        throw Exception('Failed to load movies');
      }

      page++;
    }

    return movies.take(100).toList();
  }
}

class Movie {
  final String title;
  final String posterPath;
  final String releaseDate;
  final double rating;
  final List<String> genres;
  final String overview;
  final bool hasError;

  Movie({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.rating,
    required this.genres,
    required this.overview,
    required this.hasError,
  });

  factory Movie.fromJson(Map<String, dynamic> json, Map<int, String> genreMap) {
    return Movie(
      title: json['title'],
      posterPath: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
      releaseDate: json['release_date'],
      rating: json['vote_average'].toDouble(),
      genres: (json['genre_ids'] as List).map((id) => genreMap[id]!).toList(),
      overview: json['overview'],
      hasError: json['object_progress_event'] != null, // Assuming this key indicates the error
    );
  }

}

