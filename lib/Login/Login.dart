// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:sutcooapp/menu/menumain.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            
            colors: [Colors.blueAccent, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo eklenmiş widget
              Image.asset(
                'assets/logotrs.png',
                height: 200.0,
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(labelText: 'İşletme Adı'),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Şifre'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Şifreni mi unuttun işlemleri buraya eklenebilir.
                    },
                    child: Text('Şifreni mi Unuttun?'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Destek hattı işlemleri buraya eklenebilir.
                    },
                    child: Text('Destek Hattı'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) =>  MenuMain()),);
                },
                child: Text('Giriş'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}