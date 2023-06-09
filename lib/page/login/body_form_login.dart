import 'package:flutter/material.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';



class BodyInputLogin extends StatelessWidget {
  const BodyInputLogin({super.key, this.onTap});
  final Function ? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      textFieldWidget(labelText: "Email", hintText: "Email", obscureText: false,
      controller: emailController, 
      errorText: isEmail ? null : "email khong hop le"),
      Stack(
        alignment: Alignment.centerRight,
        children:[
          textFieldWidget(labelText: "Password", hintText: "Password",
          obscureText: isHint, controller: passController,
          errorText: isPass ? null : "mat khau phai it nhat 6 ky tu"),
          GestureDetector(
            onTap: () {
              onTap!();
            },
            child: const Padding(
              padding:  EdgeInsets.only(right: 40),
              child:  Icon(Icons.remove_red_eye),
            ),
          )
        ] 
      ),
    ],
  );
  }
}