import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/TextFieldCom.dart';
import 'package:forked/Constants/styles.dart';
import 'package:forked/Controllers/ListsOfHomeController.dart';
import 'package:get/get.dart';

import '../Components/TextFieldSearch.dart';
import '../Components/Titles.dart';

class Home extends StatelessWidget {
  Home({super.key});

  ListsOfHomeController listController = Get.put(ListsOfHomeController());

  @override
  Widget build(BuildContext context) {
    var widTh = Get.width * (335 / 393);
    print(widTh);
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Center(
            child: Column(
              children: [
                //Top text:
                Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: Get.width * (335 / 393),
                  height: 30,
                  //**we must add name of use**
                  child: Text(
                    "Hi, userName ",
                    style: h3,
                  ),
                ),

                //Light green line :
                Container(
                  width: (Get.width * (168 / 393)),
                  margin: EdgeInsets.only(right: (Get.width * (200 / 393))),
                  height: 3,
                  color: lightGreen,
                ),

                //Main sentence :

                Container(
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 5, right: 100, bottom: 30),
                  width: Get.width * (254 / 393),
                  height: 65,
                  child: Text(
                    "What do you want to cook today ?",
                    style: h1,
                  ),
                ),

                //Search :
                SizedBox(
                    height: 45,
                    width: Get.width * (354 / 393),
                    child: TextFieldSearch(
                      hint: "Search for a recipe or find a cook",
                      iconImage: "images/SearchIcon.png",
                    )),

                //Daily Inspiration:
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * .03, top: 20, bottom: 7),
                  child: Titles(
                    text1: "Daily Inspiration",
                  ),
                ),

                // Daily Inspiration List:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listController.daliyInspirationList,
                  ),
                ),

                //Most Popular :
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * .03, top: 20, bottom: 7),
                  child: Titles(
                    text1: "Most Popular",
                  ),
                ),

                // Most Popular List:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listController.mostPopularList,
                  ),
                ),

                //Following :
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * .03,
                      top: 20,
                      bottom: 7,
                      right: Get.width * .03),
                  child: Titles(
                    text1: "Following",
                    text2: "",
                    funct: () {},
                  ),
                ),

                //Following List :
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listController.followingList,
                  ),
                ),

                //Explore :
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * .03,
                      top: 20,
                      bottom: 7,
                      right: Get.width * .03),
                  child: Titles(
                    text1: "Explore",
                    text2: "",
                    funct: () {},
                  ),
                ),

                //Exprore List :
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listController.exploreList,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
