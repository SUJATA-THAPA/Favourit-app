import 'package:favourite_app/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavouriteScreen extends StatefulWidget {
  const MyFavouriteScreen({super.key});

  @override
  State<MyFavouriteScreen> createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favorite =Provider.of<FavoriteItemprovider>(context);
   return Scaffold(
      appBar: AppBar(
        actions:  [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const MyFavouriteScreen()) );
            },
            child: const Icon(Icons.favorite)),
        ],
        title: const Text("Favourite App"),
      ),
      body: Consumer<FavoriteItemprovider>(
        builder: (context, favoritemodel, child) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favorite.selecteditem.length,
              
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (favoritemodel.selecteditem.contains(index)) {
                        favoritemodel.removeItem(index);
                      } else {
                        favoritemodel.additem(index);
                      }
                    },
                    title: Text('Item$index'),
                    trailing: Icon(
                      favoritemodel.selecteditem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Colors.purple,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

 