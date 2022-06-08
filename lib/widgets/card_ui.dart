import 'package:bank_app/constant.dart';
import 'package:bank_app/data/card_data.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardUI extends StatelessWidget {
  const CardUI({Key? key, required this.card}) : super(key: key);

  final BankCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 8.w, right: 8.w),
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: 6,
            color: bgColor,
            intensity: 12,
            shape: NeumorphicShape.flat),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      card.cardName,
                      style: TextStyle(
                        fontSize: 12.r,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/${card.bank}.svg',
                      width: 80.r,
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          card.no,
                          style: TextStyle(
                            fontSize: 12.r,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          card.userName,
                          style: TextStyle(
                            fontSize: 12.r,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/${card.cardProvider}.svg',
                      width: 40.r,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
