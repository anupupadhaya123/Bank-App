import 'package:bank_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "One Wallet",
          style: TextStyle(fontSize: 22.r, fontWeight: FontWeight.bold),
        ),
        //For making design 
        Neumorphic(
          style: const NeumorphicStyle(
            depth: 2,
            intensity: 1,
            surfaceIntensity: 1,
            shape: NeumorphicShape.concave,
            color: bgColor,
          ),
          padding: const EdgeInsets.all(8),
          duration: Duration(milliseconds: 1000),
          child: SvgPicture.asset('assets/icons/user.svg', 
          width: 20.r,
          height: 20.r,
          // it will not show the junk effect as the assets load
          placeholderBuilder: (context) => SizedBox(
            width: 20.r,
            height: 20.r,
          ),
          ),
        )
      ],
    );
  }
}
