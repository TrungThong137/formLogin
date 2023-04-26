import 'package:flutter/material.dart';
import 'package:full_app/widget/String.dart';
import 'package:full_app/widget/widget.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({super.key, this.onTap, this.onTapCf});
  final Function ? onTap;
  final Function ? onTapCf;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textFieldWidget(
          labelText: Email,
          hintText: Email,
          obscureText: false,
          errorText: isEmail ? null : "Email không hợp lệ",
          controller: emailController
        ),
        textFieldWidget(
          labelText: Name,
          hintText: null,
          obscureText: false,
          errorText: isName ? null : "Vui Lòng Nhập Đúng Tên",
          controller: nameController
        ),
        Stack(
          alignment: Alignment.centerRight,
          children:[
            textFieldWidget(labelText: Password, hintText: Password,
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
        Stack(
          alignment: Alignment.centerRight,
          children:[
            textFieldWidget(labelText: ComfirmPassword, hintText: null,
            obscureText: isHintCf, controller: passConfirmController,
            errorText: isPassCf ? null : "Mật Khẩu Nhập Lại Không Trùng"),
            GestureDetector(
              onTap: () {
                onTapCf!();
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