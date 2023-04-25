import 'package:flutter/material.dart';
import 'package:full_app/controller/information_controller.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';
import 'package:get/get.dart';



class InformationLogin extends StatelessWidget {
  const InformationLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final informationController= Get.put(InformationController());
    return Scaffold(
      appBar: AppBar(title:const Text(Information_Input),),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            informationLoginWidget(lable: Email, context: informationController.email.value),
            informationLoginWidget(lable: Password, context: informationController.pass.value),
          ],
        )
      ),
    );
  }
}