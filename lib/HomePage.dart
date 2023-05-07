import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topplayer/Inforamtion.dart';
import 'package:topplayer/MyData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> name = [
    "Lionel Messi",
    "Cristiano Ronaldo",
    "Pele",
    "Diego Maradona",
    "Johan Cruyff",
    "Zinadine Zidane",
    "Franz Backenbauer",
    "Michel Platini",
    "Ronaldo",
    "Ronaldinho"
  ];
  static List country = [
    "Argentina",
    "Portugal",
    "Brazil",
    "Argentina",
    "Netherlands",
    "France",
    "Germany",
    "France",
    "Brazil",
    "Brazil"
  ];
  static List team = [
    "Paris",
    "Al-Naser",
    "New York Cosmos",
    "Boca Juniors",
    "Washington Diplomats",
    "Real Madrid",
    "New York Cosmos",
    "AS Nancy",
    "Corinthians",
    "Fluminense"
  ];
  static List temimage = [
    "assets/team/Paris.png",
    "assets/team/Al-Naser.png",
    "assets/team/NewYorkCosmos.png",
    "assets/team/BocaJuniors.png",
    "assets/team/Washington2_Diplomats.png",
    "assets/team/Real Madrid.png",
    "assets/team/NewYorkCosmos.png",
    "assets/team/ASNancy.png",
    "assets/team/Corinthians.png",
    "assets/team/Fluminense.png"
  ];
  static List image = [
    "assets/Players/Messi.jpg",
    "assets/Players/Cristiano.jpg",
    "assets/Players/Pele.jpg",
    "assets/Players/Maradona.jpg",
    "assets/Players/johan.jpg",
    "assets/Players/Zinadine.jpg",
    "assets/Players/Backenbauer.jpg",
    "assets/Players/Platini.jpg",
    "assets/Players/Ronaldo.jpg",
    "assets/Players/Ronaldinho.jpg"
  ];
  static List cotrimage = [
    "assets/Country/Argentina.JPG",
    "assets/Country/Portugal.JPG",
    "assets/Country/Brazil.JPG",
    "assets/Country/Argentina.JPG",
    "assets/Country/Netherlands.JPG",
    "assets/Country/France.JPG",
    "assets/Country/Germany.JPG",
    "assets/Country/France.JPG",
    "assets/Country/Brazil.JPG",
    "assets/Country/Brazil.JPG"
  ];
  static List number = [
    "30",
    "7",
    "10",
    "10",
    "14",
    "10",
    "8",
    "10",
    "9",
    "10",
  ];
  static List Age = [
    "35",
    "38",
    "82",
    "60",
    "76",
    "50",
    "77",
    "67",
    "46",
    "43",
  ];
  static List wght = [
    "72",
    "80",
    "62",
    "60",
    "66",
    "60",
    "67",
    "67",
    "66",
    "66",
  ];
  static List height = [
    "170",
    "180",
    "82",
    "60",
    "76",
    "50",
    "77",
    "67",
    "46",
    "43",
  ];
  static List position = [
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
    "Attack",
  ];

  final List<MyData> PlyearData = List.generate(
      name.length,
      (index) => MyData(
          '${name[index]}',
          '${team[index]}',
          '${image[index]}',
          '${number[index]}',
          '${country[index]}',
          '${temimage[index]}',
          '${cotrimage[index]}',
          '${Age[index]}',
          '${wght[index]}',
          '${height[index]}',
          '${position[index]}'),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Top Players"),
          actions: [
            PopupMenuButton(
              onSelected: (item) => onSelected(context , item),
                itemBuilder:(context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: [
                        Icon(Icons.info , color: Colors.black),
                        Text(" About"),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.logout , color: Colors.black),
                        Text(" Exit"),
                      ],
                    ),
                  ),
                ],
            )
          ],
        ),
        body: ListView.builder(
          itemCount: PlyearData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${name[index]}"),
              subtitle: Text(
                "${team[index]}",
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage("${image[index]}"),
              ),
              trailing:
                  Text("${number[index]}", style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Inforamtion(
                          mydataPlayer: PlyearData[index],
                        )));
              },
            );
          },
        ));
  }
  void onSelected(BuildContext context, int item){
    switch(item){
      case 0:
        Navigator.pushNamed(context, 'about');
        break;
      case 1:
        SystemNavigator.pop();
        break;
    }
  }

}
