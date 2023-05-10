import 'package:flutter/material.dart';
import 'package:splashscreen/header_drawer.dart';
import 'package:splashscreen/cerita1.dart';
import 'package:splashscreen/profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("WATTPAD"),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyHeaderDrawer(),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Beranda"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Pengaturan"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.money),
                  title: const Text("Berlangganan"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text("Profil"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profil()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Log Out"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(
            padding: const EdgeInsets.all(25),
            crossAxisCount: 2,
            children: [
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cerita1()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/img/air.jpg"),
                        Text("Air Mata Cinta",
                            style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/img/naruto.jpg"),
                        Text("Naruto", style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/img/conan.jpg"),
                        Text("Conan", style: TextStyle(fontSize: 17.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Center(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.asset("assets/img/onepiece.jpg"),
                        Text("One Piece", style: TextStyle(fontSize: 17.0)),
                      ]))))
            ]));
  }
}
