import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'String.dart';

Widget titleHeader({required onTapLogin, required onTapRegister}){
  return Column(
    children: [
      textSpanWidget(),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonHeaderWidget(
            onPressed: (){
              onTapLogin!();
            },
            name: "Login", isLogin: isLogin
          ),
          const SizedBox(width: 20,),
          buttonHeaderWidget(
            onPressed: (){
              onTapRegister!();
            }, 
            name:"Register", isLogin: !isLogin
          ),
        ],
      ),
    ],
  );
}

Widget buttonWidget({required onPressed,required child, required width}){
  return Container(
    padding: const EdgeInsets.all(10),
    child: ElevatedButton(onPressed: onPressed, 
      child: child,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 0.8,
        shadowColor: Colors.grey.withOpacity(0.8),
      ),
    ),
  );
}

Widget buttonIconWidget({required icon, required text, required onPressed, required width}){
  return ElevatedButton (
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      maximumSize: Size(width, 50),
      minimumSize: const Size(200, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 0.8,
      shadowColor: Colors.grey.withOpacity(0.8)
    ),
    
    child: Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        icon ,
        const SizedBox(width: 5),
        Text(text)
      ],
    ) ,
  );
}

Widget textWidget({required text, required fontsize,
 required fontWeight, required color,}){
  return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
      ),
  );
}

Widget textSpanWidget(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
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

Widget buttonHeaderWidget({required onPressed, required name, required isLogin}){
  return TextButton(
    onPressed: onPressed,
    child: Text(
      name ?? '',
      style: TextStyle(
          color: isLogin ? Colors.blue : Colors.grey,
          decoration: isLogin ? TextDecoration.underline : null,
          fontSize: 20
      ),
    ),
  );
}


// Widget buttonHeaderWidget({required onTap,required name, required isLogin}) {
//   return InkWell(
//     onTap: () {
//       onTap!();
//     },
//     child: Text(
//       name ?? '',
//       style: TextStyle(
//           color: isLogin ? Colors.blue : Colors.grey,
//           decoration: isLogin ? TextDecoration.underline : null,
//           fontSize: 20),
//     ),
//   );
// }


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
    height: 270,
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