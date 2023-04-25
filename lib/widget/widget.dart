import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_app/controller/information_controller.dart';
import 'package:full_app/page/pageInformationLogin/information_Login.dart';
import 'package:get/get.dart';

import 'String.dart';

Widget buttonWidget({required onPressed,required child, required icon, required width}){
  return Container(
    padding: const EdgeInsets.all(10),
    child: ElevatedButton.icon(onPressed: onPressed, label: child,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 0.8,
        shadowColor: Colors.grey.withOpacity(0.8)
      ),
      icon:icon,
    ),
  );
}

Widget textWidget({required text, required fontsize,
 required fontWeight, required color, required textDecoration}){
  return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
      ),
      textDirection: textDecoration,
  );
}

Widget textSpanWidget(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
    child: RichText(
      textAlign: TextAlign.center,
      text:const TextSpan(
        children: [
          TextSpan(text: "By signing in you are agreeing our", style: TextStyle(color: Colors.black)),
          TextSpan(text: " Term and privacy policy", style: TextStyle(color: Colors.blue)),
        ]
      ),
    ),
  );
}

Widget buttonHeaderWidget({required onPressed, required child,
   required isLogin}){
  return TextButton(
    onPressed: onPressed, child: child,
    style: TextButton.styleFrom(
      textStyle:TextStyle(
        decoration: isLogin ? TextDecoration.underline : null
      ),
      foregroundColor: isLogin ? Colors.blue : Colors.grey
    ),
  );
}

Widget textFieldWidget({required labelText, required hintText,
 required obscureText, required errorText, required controller}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border:const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
        errorText: errorText
      ),
    ),
  );
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischeckBox,
      onChanged: (value){
        setState(() {
          ischeckBox = value!;
        });
      }
    );
  }
}

Widget buttonSvgWidget({required onTap, required img,required backGround, required width}){
  return Container(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: onTap,
      child: CircleAvatar(radius: 13, backgroundColor: backGround,
        child: SvgPicture.asset(img, width: width, alignment: Alignment.center,),
      ),
    ),
  );
}

Widget imgWidhet({required img, required fit}){
  return Container(
    width: double.infinity,
    height: 230,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img),
        fit: fit
      )
    ),
  );
}

Widget informationLoginWidget({required lable, required context}){
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(flex: 1,child: Text(lable),),
        Expanded(flex: 2,child: Text(context),),
      ],
    ),
  );
}

void inputLogin(){
  final informationController=Get.put(InformationController());
  if(emailController.text.length>6 && emailController.text.contains("@")){
    isEmail=true;
  }else{
    isEmail=false;
  }

  if(passController.text.length>6){
    isPass=true;
  }else{
    isPass=false;
  }

  if(isEmail && isPass){
    informationController.updateInformation(
      email: emailController.text.obs,
      pass: passController.text.obs
    );
    Get.to(const InformationLogin());
  }
}