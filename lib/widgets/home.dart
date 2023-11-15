import 'package:flutter/material.dart';
import 'package:bahan_baku/screens/add_bahan.dart';
import 'package:bahan_baku/screens/view_bahan.dart';

class HomeButton {
  final String name;
  final IconData icon;
  final Color color;

  HomeButton(this.name, this.icon, this.color);
}

class HomeButtonCard extends StatelessWidget {
  final HomeButton button;

  const HomeButtonCard(this.button, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: button.color,
        child: InkWell(
            onTap: () {
              if (button.name == 'Tambah Bahan') {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddProductPage(),
                    ));
              } else if (button.name == 'Lihat') {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ViewProductPage(),
                    )
                  );
              } else {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text("You pressed the ${button.name} button!"),
                    ),
                  );
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(button.icon, color: Colors.white, size: 30.0),
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(button.name,
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
            )));
  }
}