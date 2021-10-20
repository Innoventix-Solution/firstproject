import 'package:firstproject/src/utils/colors.dart';
import 'package:firstproject/src/utils/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  static String route = "homeScreen";

  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  bool isChecked = false;
  TextEditingController taskName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blue,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Global.addTaskBottomModel(context,taskName);
          },
          backgroundColor: MyColors.blue,
          child: const Icon(Icons.add,size: 35,),
        ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 70,left: 40,bottom: 40
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                CircleAvatar(
                  backgroundColor: MyColors.white,
                  child:  Icon(Icons.view_list,color: MyColors.blue,size: 40,),
                  radius: 40,
                ),

                const SizedBox(height: 20,),
                Text("Todo list",style: TextStyle(fontSize: 30,color: MyColors.white,fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),

                Text("10 Tasks",style: TextStyle(fontSize: 20,color: MyColors.white,),)
              ],

            ),
          ),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                color: MyColors.white
              ),
              child: Column(
                children: [
                  CheckboxListTile(
                    title: const Text("Title"),
                    activeColor: MyColors.white,
                    checkColor: MyColors.blue,
                    value: isChecked,
                    selected: isChecked,
                    onChanged: (bool value){
                      print("value");
                      value = value;
                      setState(() {

                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("Title",style: TextStyle(
                      decoration: TextDecoration.lineThrough
                    ),),
                    activeColor: MyColors.white,
                    checkColor: MyColors.blue,
                    value: isChecked,
                    selected: isChecked,
                    onChanged: (bool value){
                      print("value");
                      value = value;
                      setState(() {

                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
