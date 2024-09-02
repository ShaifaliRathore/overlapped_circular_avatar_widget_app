import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: const ColorScheme.light(primary: Colors.blue),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List randomImages = [
    'https://static.vecteezy.com/system/resources/thumbnails/007/209/020/small_2x/close-up-shot-of-happy-dark-skinned-afro-american-woman-laughs-positively-being-in-good-mood-dressed-in-black-casual-clothes-isolated-on-grey-background-human-emotions-and-feeligs-concept-photo.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1aImyYJeubzDSGfRgXwoE322wBIcGhW31AA&s',
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Row(
            children: [
              for (int i = 0; i < randomImages.length; i++)
                Align(
                  widthFactor: 0.6,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        randomImages[i],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
