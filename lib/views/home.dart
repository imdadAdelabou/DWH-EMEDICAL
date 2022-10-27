import 'package:emedical/components/card_post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = "/Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.0,
              )
            ],
          ),
          actions: [
            Icon(
              FontAwesomeIcons.bell,
              color: Colors.grey,
            ),
            Gap(10),
          ],
          toolbarHeight: 70.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Gap(20),
              CardPost(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.message),
              label: 'Discussions',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shop),
              label: 'Activites',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
