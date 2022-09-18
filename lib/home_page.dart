// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/utils/emojis.dart';
import 'package:health_app/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                left: 25,
                right: 25,
              ),
              // //Heading
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hello text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Devid!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          // Date Text
                          Text(
                            "18 Sep, 2022",
                            style: TextStyle(color: Colors.blue.shade200),
                          ),
                        ],
                      ),

                      // notification icon
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue.shade600),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // Search bar
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade600,
                    ),
                    child: Row(children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "search...",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // How do you feel  text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //emoji
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Emoji(
                        emoji: "😫",
                        text: 'Badly',
                      ),
                      Emoji(
                        emoji: "🙂",
                        text: 'Fine',
                      ),
                      Emoji(
                        emoji: "😁",
                        text: 'Well',
                      ),
                      Emoji(
                        emoji: "🥳",
                        text: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Exercises",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        ExerciseTile(
                          exerciseName: 'Speaking Skills',
                          numberOfExercise: '15 Exercises',
                          iconType: Icons.favorite,
                          tileColor: Colors.orange,
                        ),
                        ExerciseTile(
                          exerciseName: 'Reading Speed',
                          numberOfExercise: '20 Exercises',
                          iconType: Icons.menu_book_outlined,
                          tileColor: Colors.green,
                        ),
                        ExerciseTile(
                          exerciseName: 'Yoga',
                          numberOfExercise: '10 Exercises',
                          iconType: CupertinoIcons.star,
                          tileColor: Colors.deepPurple,
                        ),
                        ExerciseTile(
                          exerciseName: 'Eating',
                          numberOfExercise: '15 Exercises',
                          iconType: Icons.food_bank,
                          tileColor: Colors.blueAccent,
                        ),
                        ExerciseTile(
                          exerciseName: 'Meditation',
                          numberOfExercise: '20 Exercises',
                          tileColor: Colors.yellow,
                          iconType: Icons.mediation,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        color: Colors.blue.shade600,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {},
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
