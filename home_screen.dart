import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PakBazaar')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trending Categories', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _categoryChip('Mobiles'), _categoryChip('Cars'), _categoryChip('Property'),
                _categoryChip('Fashion'), _categoryChip('Jewelry'), _categoryChip('Jobs'),
              ],
            ),
            SizedBox(height: 16),
            Expanded(child: Center(child: Text('Ad feed will appear here (placeholder)')))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/post'),
        child: Icon(Icons.post_add),
      ),
    );
  }

  Widget _categoryChip(String name) => ActionChip(label: Text(name), onPressed: (){});
}
