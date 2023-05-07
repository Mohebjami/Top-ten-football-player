import 'package:flutter/material.dart';
import 'package:topplayer/MyData.dart';
import 'package:url_launcher/url_launcher.dart';

class Inforamtion extends StatelessWidget {
  final MyData mydataPlayer;
  const Inforamtion({Key? key, required this.mydataPlayer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mydataPlayer.name),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 180,
                            height: 180,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(mydataPlayer.img),
                            ),
                          ),
                          Text(
                            mydataPlayer.name,
                            style: const TextStyle(
                              fontSize: 38,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              mydataPlayer.team,
                              style: const TextStyle(
                                fontSize: 38,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(mydataPlayer.teamImg),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              mydataPlayer.country,
                              style: const TextStyle(
                                fontSize: 38,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(mydataPlayer.countryImg),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Stack(children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 20),
                        child: Stack(
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 45,
                              ),
                              child: Text(
                                mydataPlayer.age,
                                style: const TextStyle(
                                  fontSize: 38,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 40,
                          bottom: 48,
                          top: 30,
                        ),
                        child: Stack(children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 45,
                              left: 20,
                            ),
                            child: Text(
                              mydataPlayer.weight,
                              style: const TextStyle(
                                fontSize: 38,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 130,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            right: 20,
                            bottom: 45,
                            left: 28,
                          ),
                          child: Stack(
                            children: [
                              const Text(
                                "Heghit",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 45,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    mydataPlayer.height,
                                    style: const TextStyle(
                                      fontSize: 38,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            right: 10,
                            bottom: 30,
                            left: 22,
                          ),
                          child: Stack(children: [
                            const Text(
                              "Position",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 45,
                                right: 9,
                              ),
                              child: Text(
                                mydataPlayer.position,
                                style: const TextStyle(
                                  fontSize: 38,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 130,
                  ),
                  child: SizedBox(
                    height: 250,
                    width: 130,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        mydataPlayer.number,
                        style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                  width: double.infinity, height: 50,
                  child: Container(
                    color: Colors.green,
                    child: GestureDetector(
                    onTap: (){
                      _launchURL("www.onefootball.com");
                    },
                child: Center(child: Text("More Info" , style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),)),
              ),
                  ))
            ],
          ),
        ],
      )),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
}
