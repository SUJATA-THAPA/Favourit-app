import 'package:favourite_app/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => FavoriteItemprovider(),)],
      child: const MaterialApp(
        home: FavouriteScreen(),
      ),
    );
  }
}
