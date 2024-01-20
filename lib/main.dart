import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AinunApp());
}

class AinunApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ainun Aplikasi',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ainun Aplikasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersegiScreen(),
                  ),
                );
              },
              child: Text('Hitung Luas Persegi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LingkaranScreen(),
                  ),
                );
              },
              child: Text('Hitung Luas Lingkaran'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeveloperScreen(),
                  ),
                );
              },
              child: Text('Profile Developer'),
            ),
          ],
        ),
      ),
    );
  }
}

class PersegiScreen extends StatefulWidget {
  @override
  _PersegiScreenState createState() => _PersegiScreenState();
}

class _PersegiScreenState extends State<PersegiScreen> {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  double luas = 0;

  void hitungLuas() {
    double panjang = double.parse(panjangController.text);
    double lebar = double.parse(lebarController.text);
    double hasil = panjang * lebar;

    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Persegi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: panjangController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: lebarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                hitungLuas();
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Luas Persegi: $luas'),
          ],
        ),
      ),
    );
  }
}

class LingkaranScreen extends StatefulWidget {
  @override
  _LingkaranScreenState createState() => _LingkaranScreenState();
}

class _LingkaranScreenState extends State<LingkaranScreen> {
  TextEditingController jariJariController = TextEditingController();
  double luas = 0;

  void hitungLuas() {
    double jariJari = double.parse(jariJariController.text);
    double hasil = pi * jariJari * jariJari;

    setState(() {
      luas = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Lingkaran'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: jariJariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                hitungLuas();
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Luas Lingkaran: $luas'),
          ],
        ),
      ),
    );
  }
}

class DeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/ainun.JPG'),
          ),
          Text('Ainun', style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold),
            ),
            Text('FLUTTER DEVELOPER', 
            style: TextStyle(
              fontFamily: 'source sans pro',
              color: Colors.pinkAccent.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
                width: 150.0,
                child: Divider(
                  color: Colors.pinkAccent.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.woman,
                    color: Colors.pinkAccent,
                  ),
                  title: Text('2110020083', style: TextStyle(
                    color: Colors.pinkAccent.shade700,
                    fontFamily: 'source sans pro',
                    fontSize: 20.0),
                    ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.add_call, color: Colors.pinkAccent,
                  ),
                  title: Text('+6285349309042', 
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent.shade700,
                    fontFamily: 'source sans pro',
                  ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.class_, color: Colors.pinkAccent,
                  ),
                  title: Text('SI Non Reguler 5A Banjarbaru', 
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent.shade700,
                    fontFamily: 'source sans pro',
                  ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.pinkAccent,
                  ),
                  title: Text('Jl. Sei Bunut RT. 008 RW.003 Kec. Binuang Kab. Tapin Kode Pos 71183', 
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent.shade700,
                    fontFamily: 'source sans pro',
                  ),
                  ),
                ),
              ),
        ],  
        )),
      ),
    );
  }
  }
  

