import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HitungLuasPersegi extends StatefulWidget {
  @override
  _HitungLuasPersegiState createState() => _HitungLuasPersegiState();
}

class _HitungLuasPersegiState extends State<HitungLuasPersegi> {
  double panjang=0;
  double lebar=0;
  double luas=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Menghitung Luas Persegi Panjang", style: TextStyle(color: Colors.white),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffe91e63), Color(0xffad1457)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomCenter,
            )
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              color: Colors.pink,
              child: Image.asset("assets/Gambar-Persegi-Panjang.jpg", fit: BoxFit.contain,),
          ),
          Text("Hitung Luas Persegi Panjang", style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text("Panjang Persegi "),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      panjang= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Lebar Persegi"),
              Expanded(
                child: TextField(
                  onChanged: (txt){
                    setState(() {
                      lebar= double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              onPressed: (){
                setState(() {
                  luas= panjang * lebar;
                });
              },
              child: Text("Hitung"),
          ),
        
          Text("Luas Persegi Panjang Adalah=$luas",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
        ],
      ),
    );
  }
}