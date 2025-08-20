import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/post_ad_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(PakBazaarApp());
}

class PakBazaarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ValueNotifier<int>>(
      create: (_) => ValueNotifier<int>(0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PakBazaar',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => Root(),
          '/login': (ctx) => LoginScreen(),
          '/post': (ctx) => PostAdScreen(),
          '/chat': (ctx) => ChatScreen(),
          '/profile': (ctx) => ProfileScreen(),
        },
      ),
    );
  }
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<ValueNotifier<int>>(context);
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Web / large screen layout
          return Row(
            children: [
              NavigationRail(
                selectedIndex: notifier.value,
                onDestinationSelected: (i) => notifier.value = i,
                labelType: NavigationRailLabelType.selected,
                destinations: [
                  NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
                  NavigationRailDestination(icon: Icon(Icons.post_add), label: Text('Post')),
                  NavigationRailDestination(icon: Icon(Icons.chat), label: Text('Chat')),
                  NavigationRailDestination(icon: Icon(Icons.person), label: Text('Profile')),
                ],
              ),
              Expanded(child: IndexedStack(
                index: notifier.value,
                children: [
                  HomeScreen(),
                  PostAdScreen(),
                  ChatScreen(),
                  ProfileScreen(),
                ],
              ))
            ],
          );
        } else {
          // Mobile layout
          return IndexedStack(
            index: notifier.value,
            children: [
              HomeScreen(),
              PostAdScreen(),
              ChatScreen(),
              ProfileScreen(),
            ],
          );
        }
      }),
      bottomNavigationBar: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return BottomNavigationBar(
            currentIndex: notifier.value,
            onTap: (i) => notifier.value = i,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        } else {
          return SizedBox.shrink();
        }
      }),
    );
  }
}
