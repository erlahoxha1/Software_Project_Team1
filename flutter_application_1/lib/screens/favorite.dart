import 'package:flutter/material.dart';
import 'favorite_detail.dart'; // Import the detail page

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  final List<Map<String, dynamic>> favoriteItems = [
    {
      'title': 'Favourites',
      'description':
          'Keep track of everything you like and share items to get a second opinion.',
      'image': 'assets/images/placeholder.png', // Your placeholder image
      'count': 1,
    },
    {
      'title': 'Owned items',
      'description':
          'When you buy something awesome, you can find it again here.',
      'image': 'assets/images/placeholder.png',
      'count': 0,
    },
    {
      'title': 'Sell your items',
      'description': 'Get credit when you sell back your lightly worn items.',
      'image': 'assets/images/placeholder.png',
      'count': 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Items',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'All in one place',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ...favoriteItems.map((item) => Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      item['image'],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        if (item['count'] > 0)
                          Text(
                            '${item['count']} items',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                    subtitle: Text(item['description']),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      // ✅ Navigate to detail page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteDetailPage(item: item),
                        ),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
