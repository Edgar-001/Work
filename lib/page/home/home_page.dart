import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_profile/page/home/leaderborder/leaderborder_page.dart';
import 'package:my_profile/page/login/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                'assets/Asset 16 1.png',
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Color.fromARGB(255, 132, 28, 192),
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.play_circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          'Play Now',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Color.fromARGB(255, 16, 182, 69),
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.shopping_basket_outlined,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(27),
                        child: Text(
                          'Purchases',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.red,
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 50,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LeaderPage()),
                          );
                        },
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.format_list_numbered_rounded,
                          size: 70,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(17),
                        child: Text(
                          'Leaderboard',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.group_sharp,
                          size: 70,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(30),
                        child: Text(
                          'Profile',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                'assets/lllistration.png',
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
