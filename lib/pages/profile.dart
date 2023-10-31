import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 300,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(250),
                  child: Image.asset("images/profile.jpg"),
                  ),
              ),
              Container(height: 100,width: 400,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("NPM : 2110010515",style: TextStyle(fontSize: 20)),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Nama : Rahmatul Firdaus",style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Kelas : 5B TI Reguler Pagi Banjarbaru",style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ],
                  ),
              ),
              TextButton(
               style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 179, 255))
              ),
              onPressed: () { },
              child: Text('BERANDA'),
            )
            ],
          ),
        );
  }
}