import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/widget.dart';

class footer extends StatelessWidget {
  const footer({super.key});

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
              backGround: Colors.red,
              img: "assets/p.svg", width: 15.0
            ),
            buttonSvgWidget(
              onTap: (){},
              backGround: Colors.blue,
              img: "assets/in.svg", width: 15.0
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 170),
          child: InkWell(
            onTap: (){},
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
        )
      ],
    );
  }
}