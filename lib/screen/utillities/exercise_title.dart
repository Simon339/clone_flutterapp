import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon; 
  final String exerciseName ; 
  final int numberOfExercise;
  final Color color;
  const ExerciseTile({Key? key , required this.icon , required this.exerciseName,
  required this.numberOfExercise , required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                  
                                    color: color,
                                                            
                                    child: Icon(icon , color: Colors.white,)),
                                ), 
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Text(exerciseName , style: TextStyle(fontSize: 18, color: Colors.black , fontWeight: FontWeight.bold)) ,
                                SizedBox(height: 5,),
                                //Subtitle
                                Text(numberOfExercise.toString()+ "  Exercises  " , style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold)) 
                              ],
                            ),
                              ],
                            ),

                            Icon(Icons.more_horiz)
                            
                          ]
                            
                          )
                        ),
    );
  }
}