import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    var songFont = GoogleFonts.notoSans(fontSize: 15);
    var artistFont = GoogleFonts.notoSans(fontSize: 10);
    return Scaffold(
      appBar: AppBar(
        title: Text('Agetzzue Music'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int index) {
          return ListTile(
              leading: Image.network(
                  'https://i.pinimg.com/originals/35/53/4e/35534e860468af2f2c9a75c072290471.jpg'),
              title: Text(
                'Ninguém sabe qual é essa música!',
                style: songFont,
              ),
              subtitle: Text(
                'Ninguém sabe qual é a banda também!',
                style: artistFont,
              ),
              contentPadding: EdgeInsets.all(10));
        },
      ),
    );
  }
}
