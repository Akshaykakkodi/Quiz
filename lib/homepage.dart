import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'marks.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? q1;
  String? q2;
  String? q3;
  String? q4;
  int marks=0;
  getMarks() async {
    if(q1=='Lime'){
      marks++;
    }
    if(q2=='Application'){
      marks++;
    }
    if(q3=='Operating system'){
      marks++;
    }
    if(q4=='Operating system'){
      marks++;
    }
    SharedPreferences spref=await SharedPreferences.getInstance();
    spref.setString('marks',marks.toString());

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz')),
      ) ,
      body: ListView(
        children: [

          SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                Text('1. What color does yellow and green make?',style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [

                    Radio(
                      value: "Lime",
                      groupValue: q1,
                      onChanged: (v) {
                        setState(() {
                          q1=v!;
                        });
                      },),
                    Text('Lime'),
                  ],
                ),

                Row(
                  children: [

                    Radio(
                      value: "Ocean mist",
                      groupValue: q1,
                      onChanged: (v) {
                        setState(() {
                          q1=v!;
                        });
                      },),
                    Text('Ocean mist'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Maroon",
                      groupValue: q1,
                      onChanged: (v) {
                        setState(() {
                          q1=v!;
                        });
                      },),
                    Text('Maroon'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Tangerine",
                      groupValue: q1,
                      onChanged: (v) {
                        setState(() {
                          q1=v!;
                        });
                      },),
                    Text('Tangerine'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Column(
              children: [
                Text('2.MS-Word is an example of ?',style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [

                    Radio(
                      value: "Operating system",
                      groupValue: q2,
                      onChanged: (v) {
                        setState(() {
                          q2=v!;
                        });
                      },),
                    Text('Operating system'),
                  ],
                ),

                Row(
                  children: [

                    Radio(
                      value: "Processing system",
                      groupValue: q2,
                      onChanged: (v) {
                        setState(() {
                          q2=v!;
                        });
                      },),
                    Text('Processing system'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Input device",
                      groupValue: q2,
                      onChanged: (v) {
                        setState(() {
                          q2=v!;
                        });
                      },),
                    Text('Input device'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Application",
                      groupValue: q2,
                      onChanged: (v) {
                        setState(() {
                          q2=v!;
                        });
                      },),
                    Text('Application'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Column(
              children: [
                Text('3.Windows10 is an example of ?',style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [

                    Radio(
                      value: "Operating system",
                      groupValue: q3,
                      onChanged: (v) {
                        setState(() {
                          q3=v!;
                        });
                      },),
                    Text('Operating system'),
                  ],
                ),

                Row(
                  children: [

                    Radio(
                      value: "Processing system",
                      groupValue: q3,
                      onChanged: (v) {
                        setState(() {
                          q3=v!;
                        });
                      },),
                    Text('Processing system'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Input device",
                      groupValue: q3,
                      onChanged: (v) {
                        setState(() {
                          q3=v!;
                        });
                      },),
                    Text('Input device'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Application",
                      groupValue: q3,
                      onChanged: (v) {
                        setState(() {
                          q3=v!;
                        });
                      },),
                    Text('Application'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Column(
              children: [
                Text('4.Linux is an example of ?',style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [

                    Radio(
                      value: "Operating system",
                      groupValue: q4,
                      onChanged: (v) {
                        setState(() {
                          q4=v!;
                        });
                      },),
                    Text('Operating system'),
                  ],
                ),

                Row(
                  children: [

                    Radio(
                      value: "Processing system",
                      groupValue: q4,
                      onChanged: (v) {
                        setState(() {
                          q4=v!;
                        });
                      },),
                    Text('Processing system'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Input device",
                      groupValue: q4,
                      onChanged: (v) {
                        setState(() {
                          q4=v!;
                        });
                      },),
                    Text('Input device'),
                  ],
                ),
                Row(
                  children: [

                    Radio(
                      value: "Application",
                      groupValue: q4,
                      onChanged: (v) {
                        setState(() {
                          q4=v!;
                        });
                      },),
                    Text('Application'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          ElevatedButton(onPressed: () {
            setState(() {
              getMarks();
            });
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Results();
            },));

          }, child: Text('Submit')),


        ],
      ),
    );
  }
}
