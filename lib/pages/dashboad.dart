import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Jumlah Mahasiswa", style: TextStyle(fontSize: 25, color: Colors.white),),),
                    Center(child: Text("31", style: TextStyle(fontSize: 25, color: Colors.white),),),
                  ],
                  
                ),
              ),
              SizedBox(width: 170),
              Container(
                width: 250,
                height: 250,
                color: Color.fromARGB(255, 0, 0, 0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Laki-Laki", style: TextStyle(fontSize: 25, color: Colors.white),),
                      Text("20", style: TextStyle(fontSize: 25, color: Colors.white),)
                    ],
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 170),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Perempuan", style: TextStyle(fontSize: 25, color: Colors.white),),),
                    Center(child: Text("15", style: TextStyle(fontSize: 25, color: Colors.white),),),
                  ],
                ),
              ),
              SizedBox(width: 170,),
              Container(
                width: 250,
                height: 250,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Rekos", style: TextStyle(fontSize: 25, color: Colors.white),),),
                    Center(child: Text("3", style: TextStyle(fontSize: 25, color: Colors.white),),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}