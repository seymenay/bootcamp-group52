import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.deepPurple, // AppBar rengi
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepPurple, width: 4),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile_picture.jpg'),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Kullanıcı Adı',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              const SizedBox(height: 8),
              Text(
                'Kullanıcı açıklaması burada yer alabilir.',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildStatColumn('100', 'Takipçiler'),
                  const SizedBox(width: 24),
                  _buildStatColumn('80', 'Takip Edilenler'),
                ],
              ),
              const SizedBox(height: 24),
              _buildSectionTitle('Favori Diziler'),
              _buildFavoriteItem('Dizi 1', 'https://example.com/series1.jpg'),
              _buildFavoriteItem('Dizi 2', 'https://example.com/series2.jpg'),
              const SizedBox(height: 24),
              _buildSectionTitle('Favori Filmler'),
              _buildFavoriteItem('Film 1', 'https://example.com/movie1.jpg'),
              _buildFavoriteItem('Film 2', 'https://example.com/movie2.jpg'),
              const SizedBox(height: 24),
              _buildSectionTitle('Yorumlar'),
              _buildCommentItem('Dizi 1', 'Bu dizi harika!', 5),
              _buildCommentItem('Film 1', 'Bu film çok eğlenceliydi.', 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }

  Widget _buildFavoriteItem(String title, String imageUrl) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(imageUrl, width: 70, height: 70, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildCommentItem(String title, String comment, int rating) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(comment),
            const SizedBox(height: 4),
            Row(
              children: List.generate(rating, (index) => const Icon(Icons.star, color: Colors.amber)),
            ),
          ],
        ),
      ),
    );
  }
}

