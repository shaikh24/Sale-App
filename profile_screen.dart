import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CircleAvatar(radius: 36, child: Icon(Icons.person, size: 36)),
            SizedBox(height: 8),
            Text('Seller Name (placeholder)', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 12),
            ListTile(title: Text('Verified Seller'), leading: Icon(Icons.verified)),
            ListTile(title: Text('Coins: 120'), leading: Icon(Icons.monetization_on)),
            SizedBox(height: 8),
            ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/chat'), child: Text('Go to Chats'))
          ],
        ),
      ),
    );
  }
}
