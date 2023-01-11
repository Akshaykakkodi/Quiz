import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  String? Mark;
 Future<String?> getMarks() async {
    SharedPreferences spref =await SharedPreferences.getInstance();
    Mark= spref.getString('marks');
   return Mark;
  }
  clearData() async {
   SharedPreferences spref=await SharedPreferences.getInstance();
   spref.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            FutureBuilder(
                future: getMarks(),
              builder: (context,snapshot) {
              if(snapshot.hasData) {
                return Container(
                  height: 200,
                  width: double.infinity,
                  child:
                  Card(
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Score',style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
                        Text(Mark!,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                      ],
                    )

                  ),
                );
              }
              else{
                return Text('no data');
              }
              }
            ),
            ElevatedButton(onPressed: () {
              clearData();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Homepage();
              },));

            }, child: Text('Exit quiz'))
          ],
        ),
      ),
    );
  }
}
