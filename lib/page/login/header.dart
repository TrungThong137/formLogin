import 'package:flutter/material.dart';

import '../../widget/String.dart';
import '../../widget/widget.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key, this.onTapLogin, this.onTapRegister});
  final Function? onTapLogin;
  final Function? onTapRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        textWidget(
          text:"Login",
          fontWeight: FontWeight.bold,
          fontsize: 30.0,
          color: Colors.black,
          textDecoration: null
        ),
        
        textSpanWidget(),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonHeaderWidget(
              onPressed: (){
                onTapLogin!();
              },
              child:const Text("login"), isLogin: isLogin
            ),
            buttonHeaderWidget(
              onPressed: (){
                onTapRegister!();
              }, 
              child:const Text("Register"), isLogin: !isLogin
            ),
          ],
        ),
      ],
    );
  }
}