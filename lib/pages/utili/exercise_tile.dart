import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;

  const ExerciseTile({
    Key? key,
   required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    color: Colors.orange,
                    child: Icon(icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 12.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exerciseName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Text(numberOfExercises.toString() + ' ' + 'Exercises',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
    ),
      );
  }
}
