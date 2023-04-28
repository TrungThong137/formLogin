

import 'package:flutter/material.dart';
import 'package:full_app/controller/information_controller.dart';
import 'package:full_app/page/footer/footer.dart';
import 'package:full_app/page/login/formlogin.dart';
import 'package:full_app/page/pageInformationLogin/information_Login.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';

import 'package:full_app/page/header/headers.dart';
import 'package:get/get.dart';

import 'body_form_register.dart';



class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Header(name: "Register"),

                titleHeader(
                  onTapLogin: (){
                      if(!isLogin){
                        isLogin=!isLogin;
                      }
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>const FormLogin()));
                    });
                  },
                  onTapRegister: (){
                    if(isLogin){
                      isLogin=!isLogin;
                    }
                    setState(() {
                    });
                  },
                ),

                BodyRegister(
                  onTap: (){
                    setState(() {
                      isHint=!isHint;
                    });
                  },
                  onTapCf: (){
                    setState(() {
                      isHintCf=!isHintCf;
                    });
                  },
                ),
                
                Padding(
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
                ),
        
                buttonWidget(
                  onPressed: (){
                    setState(() {
                      inputRegister(context: context);
                    });},
                  child:const Text("Register"),
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

  void inputRegister({required context}){
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

    if(nameController.text.length>6){
      informationController.updateInformation(
        email: emailController.text.obs,
        pass: passController.text.obs
      );
      isName=true;
    }else{
      isName=false;
    }

    if(passConfirmController.text == informationController.pass.value){
      isPassCf=true;
    }else{
      isPassCf=false;
    }

    if(isEmail && isPass && isPassCf && isName){
      informationController.updateInformation(
        email: emailController.text.obs,
        pass: passController.text.obs
      );
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=> const InformationLogin()));
    }
  }
}