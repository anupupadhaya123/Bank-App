// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bank_app/constant.dart';
import 'package:bank_app/data/bills_data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BillSection extends StatelessWidget {
  const BillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bills & Payments',
            style: headingStyle,
          ),
          SizedBox(height: 24.h),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: billsData.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 24.h,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              final bill = billsData[index];
              return _BillListTile(
                iconPath: bill.iconPath,
                title: bill.name,
                subtitle: 'Amount to be paid',
                amount: bill.amount,
                payBill: () {},
              );
            },
          )
        ],
      ),
    );
  }
}

class _BillListTile extends StatelessWidget {
  const _BillListTile({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.payBill,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final String subtitle;
  final String amount;
  final VoidCallback payBill;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Neumorphic(
          padding: const EdgeInsets.all(10),
          style: NeumorphicStyle(
            depth: 4,
            intensity: 4,
            surfaceIntensity: 1,
            color: bgColor,
            shape: NeumorphicShape.concave,
          ),
          child: SvgPicture.asset(iconPath),
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12.r,
                letterSpacing: 0.4,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 10.r,
                      letterSpacing: 0.1,
                      color: greyColor,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                  TextSpan(text: subtitle),
                  TextSpan(
                    text: " Rs " + amount,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]
                )
                ),
          ],
        ),
        const Spacer(

        ),
        Container(
          padding: EdgeInsets.only(bottom: 4.h),
          decoration:const BoxDecoration(
            border: Border(bottom: BorderSide(width: 2)),
          ),
          child: Text(
            'Pay Bill',
            style: TextStyle(
              fontSize: 12.r,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
