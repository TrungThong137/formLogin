import 'package:flutter/material.dart';
import 'package:full_app/controller/information_controller.dart';
import 'package:full_app/page/footer/footer.dart';
import 'package:full_app/page/formpt/form_PT_Bac_Hai.dart';
import 'package:full_app/page/login/body_form_login.dart';
import 'package:full_app/page/register/form_register.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';
import 'package:full_app/page/header/headers.dart';
import 'package:get/get.dart';



class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Header(name: "Login"),

                titleHeader(
                  onTapLogin: (){
                    setState(() {
                      if(!isLogin){
                        isLogin=!isLogin;
                      }
                    });
                  },
                  onTapRegister: (){
                    if(isLogin){
                      isLogin=!isLogin;
                    }
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>const FormRegister()));
                    });
                  },
                ),

                BodyInputLogin(onTap: (){
                  setState(() {
                    isHint=!isHint;
                  });
                },),
                
                checkBoxAndText(),
        
                buttonWidget(
                  onPressed: (){
                    setState(() {
                      inputLogin(context: context);
                    });},
                  child:const Text("Login"),
                  width: 300.0
                ),
                
                textWidget(
                  text: "or connect with", fontsize: 15.0,
                  fontWeight: FontWeight.w500, color: Colors.grey,
         
                ),
                
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget checkBoxAndText(){
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CheckBoxWidget(),
              textWidget(
                text:"Remember Password", fontsize: 15.0, 
                fontWeight: FontWeight.w400,color: Colors.black,
              
              )
            ],
          ),
          textWidget(
            text:"Forget Password", fontsize: 15.0, 
            fontWeight: FontWeight.w400,color: Colors.blue,
    
          )
        ],
      ),
    );
  }
  // kiem tra xu ly trong input
  void inputLogin({required context}){
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
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=> const FormPTBacHai()));
    }
  }
}