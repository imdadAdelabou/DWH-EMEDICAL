import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeMedical extends StatefulWidget {
  static String routeName = "/home-medical";
  const HomeMedical({Key? key}) : super(key: key);

  @override
  State<HomeMedical> createState() => _HomeMedicalState();
}

class _HomeMedicalState extends State<HomeMedical> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.bars,
                color: Colors.blue,
                //fontweight: FontWeight.bold,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                  ),
                  items: contentSlidersItems.map((slider) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    slider.urlImage,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              bottom: 10,
                              child: Text(
                                slider.textContent,
                                style: const TextStyle(
                                  fontFamily: montserratFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                Gap(20),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: gridCardItem.length,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) => Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 130,
                          child: SvgPicture.asset(
                            gridCardItem[index].urlImage,
                          ),
                        ),
                        Text(
                          gridCardItem[index].textContent,
                          style: TextStyle(
                            fontFamily: montserratFamily,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              label: 'Notification',
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
