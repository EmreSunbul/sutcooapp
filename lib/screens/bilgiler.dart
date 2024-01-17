// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class BilgiShowModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
    
      decoration: BoxDecoration(color: Color(0xFF5355a2),borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 300,
      width: 300,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/logotrs.png'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Kullanıcı Adı',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'E-posta: kullanici@example.com',
            style: TextStyle(fontSize: 16.0,color: Colors.white),
            
            
          ),
          Text(
            'Telefon: (123) 456-7890',
            style: TextStyle(fontSize: 16.0,color: Colors.white),
          ),
        
          
        ],
      ),
    );
  }
}

