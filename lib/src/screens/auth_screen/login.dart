import 'package:firstproject/src/screens/home_screen/home_screen.dart';
import 'package:firstproject/src/utils/colors.dart';
import 'package:firstproject/src/utils/global.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  static String route = "loginScreen";

  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.blue,

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
                    child:  Icon(Icons.login,color: MyColors.blue,size: 40,),
                    radius: 40,
                  ),

                  const SizedBox(height: 20,),
                  Text("Login",style: TextStyle(fontSize: 30,color: MyColors.white,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,)
                ],

              ),
            ),
            Expanded(
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    color: MyColors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),

                      CustomTextFormField(
                        controller: email,
                        hintText: "Enter Email",
                        title: "Email",
                        validator: (value){
                          if(value==null || value ==""){
                            return "Email is Required";
                          }else{
                            return null;
                          }
                        },

                      ),
                      const SizedBox(height: 15,),
                      CustomTextFormField(
                        controller: password,
                        obscure: true,
                        title: "Password",
                        hintText: "Enter Password",
                        validator: (value){
                          if(value==null || value ==""){
                            return "Password is Required";
                          }else{
                            return null;
                          }
                        },

                      ),

                      const SizedBox(height: 30,),

                       CustomButton(
                        btnName: const Text("Login"),
                        onPressed: (){
                          Navigator.of(context).pushReplacementNamed(HomeScreen.route);
                        },


                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
