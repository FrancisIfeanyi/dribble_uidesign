import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/utili/emoticon_face.dart';
import 'package:mentalhealthapp/pages/utili/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController My_Controller1= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '' ),
      ],),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    //Greetings row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Ify!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('25 July, 2022',
                          style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.notifications_active,
                        color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25.0,),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      children:  [
                        Expanded(
                          child: TextField(
                            controller: My_Controller1,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How Do You Feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0,),
                  //4 Diff. faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '????',
                          ),
                          SizedBox(height: 8.0,
                          ),
                          Text('Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '????',
                          ),
                          SizedBox(height: 8.0,
                          ),
                          Text('Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '????',
                          ),
                          SizedBox(height: 8.0,
                          ),
                          Text('Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '????',
                          ),
                          SizedBox(height: 8.0,
                          ),
                          Text('Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.0,),

            //Exercise Begins
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: EdgeInsets.all( 5.0),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        //Exercise Heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        //ListView of Exercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 01,
                                color: Colors.amber,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 02,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 03,
                                color: Colors.lightGreenAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.brightness_2,
                                exerciseName: 'Comprehension Skills',
                                numberOfExercises: 04,
                                color: Colors.indigo,
                              ),
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 05,
                                color: Colors.amber,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 06,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 07,
                                color: Colors.lightGreenAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.brightness_2,
                                exerciseName: 'Comprehension Skills',
                                numberOfExercises: 08,
                                color: Colors.indigo,
                              ),
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 09,
                                color: Colors.amber,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 10,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 11,
                                color: Colors.lightGreenAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.brightness_2,
                                exerciseName: 'Comprehension Skills',
                                numberOfExercises: 12,
                                color: Colors.indigo,
                              ),
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 13,
                                color: Colors.amber,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 14,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 15,
                                color: Colors.lightGreenAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.brightness_2,
                                exerciseName: 'Comprehension Skills',
                                numberOfExercises: 16,
                                color: Colors.indigo,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
