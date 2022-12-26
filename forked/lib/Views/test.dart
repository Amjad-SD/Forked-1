import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/UserRequests.dart';
import 'package:forked/Services/FireStoreRequests/forkedRecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/savedRecipeRequests.dart';

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
        ElevatedButton(
            onPressed: () {
              setForkedRecipe(
                parentName: "pancake",
                parentID: "12381293892831928391283",
                  userID: "123ikdjsdoiwjad2",
                  imgPath: "asdljalidjlaiwj",
                  userProfileImage: "awdjnqwkedij",
                  username: "wdlkijqwodi",
                  ingredients: "adjsqliwdj",
                  preperation: "laksdmlawkmdl",
                  calories: 12,
                  servings: 12222,
                  minutes: 22,
                  likes: 1213,
                  title: "fried egg"
                  
                  );
// readAllOriginalRecipies();

              // setForkedRecipe(userID: "123ikdjsdoiwjad2");
              
            },
            child: Text("data"))
      ],
    ));
  }
}
