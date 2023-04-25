import 'package:flutter/material.dart';
import 'package:full_app/page/login/footer.dart';
import 'package:full_app/page/login/header.dart';
import 'package:full_app/page/login/inputLogin.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';



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
                HeaderLogin(
                  onTapLogin: (){
                    setState(() {
                      if(!isLogin){
                        isLogin=!isLogin;
                      }
                    });
                  },
                  onTapRegister: (){
                    setState(() {
                      if(isLogin){
                        isLogin=!isLogin;
                      }
                    });
                  },
                ),

                InputLogin(onTap: (){
                  setState(() {
                    isHint=!isHint;
                  });
                },),
                
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
                            textDecoration: null
                          )
                        ],
                      ),
                      textWidget(
                        text:"Forget Password", fontsize: 15.0, 
                        fontWeight: FontWeight.w400,color: Colors.blue,
                        textDecoration: null
                      )
                    ],
                  ),
                ),
        
                buttonWidget(
                  onPressed: (){
                    setState(() {
                      inputLogin();
                    });},
                  child:const Text("Login"),
                  icon:const Icon(Icons.check), width: 300.0),
                
                textWidget(
                  text: "or connect with", fontsize: 15.0,
                  fontWeight: FontWeight.w500, color: Colors.grey,
                  textDecoration: null
                ),
                
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}