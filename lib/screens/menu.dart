import 'package:flutter/material.dart';
import 'package:bahan_baku/widgets/home.dart';
import 'package:bahan_baku/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<HomeButton> buttons = [
    HomeButton('Lihat Bahan', Icons.view_list, Colors.indigo),
    HomeButton('Tambah Bahan', Icons.add, Colors.indigo),
    HomeButton('Logout', Icons.logout, Colors.red)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DATA BAHAN BAKU'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text('Welcome to BahanBaku!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: buttons.map((HomeButton button) {
                        return HomeButtonCard(button);
                      }).toList(),
                    )
                ],
              )),
        ),
        drawer: const LeftDrawer(),
      );
  }
}