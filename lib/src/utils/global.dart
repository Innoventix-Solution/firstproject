import 'package:flutter/material.dart';

import 'colors.dart';

class Global{
 static BuildContext context;

 /// Add Task Bottom Model
 static addTaskBottomModel(context, TextEditingController controller){
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
        context: context, builder: (BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [

            Text("Add Task",style: TextStyle(fontSize: 24,color: MyColors.blue),),
            const SizedBox(height: 20,),
            CustomTextFormField(
              controller: controller,
              title: "Task",
              hintText: "Enter Task",
              validator: (value){
                if(value==null || value ==""){
                  return "Task Required";
                }else{
                  return null;
                }
              },

            ),

            const SizedBox(height: 35,),
            CustomButton(
              onPressed: (){

              },
              btnName: const Text("Add",style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      );
    });
  }

}


/// CustomButton

class CustomButton extends StatelessWidget {
  const CustomButton({Key key, this.onPressed, this.btnName}) : super(key: key);

  final VoidCallback onPressed;
  final Text btnName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: MyColors.blue
        ),
        onPressed: onPressed,
        child: btnName,
      ),
    );
  }
}

/// Custom TextField

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key key, this.controller, this.title, this.hintText, this.obscure, this.validator}) : super(key: key);

  final String title;
  final String hintText;
  final TextEditingController controller;
  final bool obscure;
  final FormFieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscure??false,
      decoration: InputDecoration(
          labelText: title,
          hintText: hintText,
          hintStyle: TextStyle(color: MyColors.blue),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          )
      ),
    );
  }
}
