import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:full_app/widget/widget.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        imgWidhet(img: "assets/imgForm1.png", fit: BoxFit.fill),
        imgWidhet(img: "assets/Subtract.png", fit: BoxFit.fill),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonSvgWidget(
              onTap: (){},
              backGround: Colors.white,
              img: "assets/facebook.svg", width: 27.0
            ),
            buttonSvgWidget(
              onTap: (){},
              backGround: Colors.white,
              img: "assets/instagram.svg", width: 27.0
            ),
            buttonSvgWidget(
              onTap: (){}, 
              img: "assets/p.svg", backGround: Colors.red, 
              width: 27.0
            ),
            buttonSvgWidget(
              onTap: (){},
              backGround: Colors.blue,
              img: "assets/in.svg", width: 15.0
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 160, horizontal: 160),
          child: InkWell(
            onTap: (){},
            child: Center(
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.white),
                ),
                child: SvgPicture.asset("assets/Frame.svg"),
              ),
            ),
          ),
        )
      ],
    );
  }
}