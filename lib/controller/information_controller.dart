import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationController extends GetxController{
  var email="".obs;
  var pass="".obs;

  updateInformation({required email, required pass}){
    this.email=email;
    this.pass=pass;
  }
}