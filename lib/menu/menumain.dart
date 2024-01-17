// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:sutcooapp/screens/bilgiler.dart';
import 'package:sutcooapp/screens/hava_durumu.dart';

import 'package:sutcooapp/screens/kazanc_dokumu.dart';
import 'package:sutcooapp/screens/sutDokumu.dart';


class MenuMain extends StatefulWidget {
  const MenuMain({super.key});

  @override
  State<MenuMain> createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                material.ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    ' Sünbül Çiftliği!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Hoşgeldiniz',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white54,
                        ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/46.jpg"),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SutDokumuPage()),
                      );
                    },
                    child: itemDashboard(
                        'Süt Dökümü',
                        CupertinoIcons.bookmark,
                        Colors.deepOrange),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KazancPage()),
                      );
                    },
                    child: itemDashboard(
                        'Kazanç Dökümü', CupertinoIcons.bag_fill, Colors.green),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KazancPage()),
                      );
                    },
                    child: itemDashboard(
                        'Sütçüm Nerede?', CupertinoIcons.car, Colors.purple),
                  ),
                  InkWell(
                    onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HavaDurumuSayfasi()),
                      );
                    },
                    child: itemDashboard(
                        'Hava Durumu', CupertinoIcons.cloud, Colors.brown),
                  ),
                  InkWell(
                    onTap: () {
                     showModalBottomSheet(
                           context: context,
                             builder: (BuildContext context) {
                                return BilgiShowModal(); // Hedef sayfanın örneği
                                     },
                                );
                    },
                    child: itemDashboard(
                        'İş Yeri Bilgilerim', CupertinoIcons.info, Colors.blue),
                  ),
                  InkWell(
                    onTap: () {
                     
                    },
                    child: itemDashboard(
                        'İletişim', CupertinoIcons.phone, Colors.pinkAccent),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
 

  itemDashboard(String title, IconData iconData, Color background) =>
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(iconData, color: Colors.white)),
            const SizedBox(height: 8),
            Text(title.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
      
}
