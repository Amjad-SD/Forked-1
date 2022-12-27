import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/UserRequests.dart';
import 'package:forked/Services/FireStoreRequests/allRequests.dart';
import 'package:forked/Services/FireStoreRequests/forkedRecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/savedRecipeRequests.dart';
import 'package:get/get.dart';

import '../Components/CardRecipeCard.dart';
import '../Components/Recipeinfo.dart';
import '../Services/FireStoreRequests/likedRecipeRequests.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(Icons.abc_rounded),
        ElevatedButton(
            onPressed: () async {
              //  await   setForkedRecipe(
              //       parentName: "pancake",
              //       parentID: "12381293892831928391283",
              //         userID: "55",
              //         imgPath: "asdljalidjlaiwj",
              //         userProfileImage: "awdjnqwkedij",
              //         username: "wdlkijqwodi",
              //         ingredients: "adjsqliwdj",
              //         preperation: "laksdmlawkmdl",
              //         calories: 12,
              //         servings: 12222,
              //         minutes: 22,
              //         likes: 1213,
              //         title: "muhammed"

              //         );
              //FollowingRecipies(followingIDs: ["32456789087654324","123ikdjsdoiwjad2"]);
// readAllOriginalRecipies();
              usersFollowersQuery();
// SsearchingInForked(searchKey: "am");
// SsearchingInOriginal(searchKey: "am");
// SsearchingInUsers(searchKey: "am");

              // setForkedRecipe(userID: "123ikdjsdoiwjad2");
            },
            child: Text("data"))
      ],
    ));
  }
}
