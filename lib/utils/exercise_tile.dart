import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile(
      {Key? key,
      required this.iconType,
      required this.exerciseName,
      required this.numberOfExercise,
      required this.tileColor})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final IconData iconType;
  final String exerciseName;
  final String numberOfExercise;
  final Color tileColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tileColor),

                  // icon
                  child: Icon(
                    iconType,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),

                //tile heading
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Title
                    Text(
                      exerciseName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    //sub title
                    Text(
                      numberOfExercise,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
