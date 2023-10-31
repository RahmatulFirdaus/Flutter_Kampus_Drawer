import 'package:flutter/material.dart';
import 'package:tugas03/pages/dashboad.dart';
import 'package:tugas03/pages/notifications.dart';
import 'package:tugas03/pages/profile.dart';
import 'package:tugas03/pages/settings.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home:const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List _isiHalaman = [
    {"title" : "Dashboard", "halaman" : Dashboard()},
    {"title" : "Settings", "halaman" : Setting()},
    {"title" : "Notifications", "halaman" : Notifikasi()},
    {"title" : "Profile", "halaman" : Profile()},
  ];

  int _halamanAktif = 0;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isiHalaman[_halamanAktif]["halaman"],
        appBar: AppBar(
          title: Text(_isiHalaman[_halamanAktif]["title"]),
          backgroundColor: Colors.black45,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                   image: NetworkImage("https://cdn.discordapp.com/attachments/892554814939082793/1166598589536026695/1024_1.gif?ex=654b129a&is=65389d9a&hm=f83c6ad5ad8cc7639bff283d13620d37a9ffc00e5752cef1df7ce5b050bf2ed0&",)
                  )
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset('images/10000.gif', width: 90, height: 90 , fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    SizedBox(height: 5,),
                    Text("Nama : Rahmatul Firdaus"),
                    SizedBox(height: 3,),
                    Text("NPM  : 2110010515"),
                  ],
                )
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                trailing: Icon(Icons.arrow_right_sharp),
                onTap: (){
                  setState(() {
                    _halamanAktif = 0;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_right_sharp),
                onTap: () {
                  setState(() {
                    _halamanAktif = 1;
                  });
                  Navigator.of(context).pop();
                }
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_right_sharp),
                onTap: () {
                  setState(() {
                    _halamanAktif = 2;
                  });
                  Navigator.of(context).pop();
                }
              ),
              ListTile(
                leading: Icon(Icons.person_rounded),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  setState(() {
                    _halamanAktif = 3;
                  });
                  Navigator.of(context).pop();
                }
              )
            ],
          ),
        ),
    );
  }
}