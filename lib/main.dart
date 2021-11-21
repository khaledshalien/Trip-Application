import 'package:flutter/material.dart';
import 'makepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _onScroll(){
  }

  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily:'Nunito'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            MakePage(
              numPage: 1,
              image: 'assest/images/one.jpg',
              title: "Yosemite National Park",
              description: "Yosemite National Park is in California's Sierra Nevada Mountains."
                  " It's Famed for its giant, ancient sequoia trees, "
                  "and for Tunnel Viwe,the iconic vista of towering "
                  "Bridalveil fall and the granit cliffs of El Caption and Half Dome",
            ),
            MakePage(
              numPage: 2,
              image: 'assest/images/four.jpg',
              title: "Golden Gate Bridge",
              description: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate."
                  "the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.",

            ),
            MakePage(
              numPage: 3,
              image: 'assest/images/two.jpg',
              title: "Sedona",
              description: "Sedona is regularly described as one of America's most beautiful places."
                  " Nowhere else will you find a landscape as dramatically colorful."
              ,

            ),
            MakePage(
              numPage: 4,
              image: 'assest/images/three.jpg',
              title: "Savannah",
              description: "Savannah,with its Spanish moss. "
                  "Southern accents and creepy graveyards, is a lot like Charleston ,"
                  "South Carolina , But this city about 100 miles to the south has an eccentric streak.",
            ),

          ],
        ),
      ),
    );
  }
}
