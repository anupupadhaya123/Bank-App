import 'package:bank_app/data/card_data.dart';
import 'package:bank_app/widgets/bill_section.dart';
import 'package:bank_app/widgets/card_ui.dart';
import 'package:bank_app/widgets/custom_app_bar.dart';
import 'package:bank_app/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(viewportFraction: 0.96);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomAppBAr(),
            ),
            SizedBox(
                height: 300,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: cardData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CardUI(card: cardData[index]);
                    })),
            SizedBox(
              height: 16.h,
            ),
            const BillSection(),
             SizedBox(
              height: 32.h,
            ),
            const RecentTransaction()
          ],
        ),
      ),
    );
  }
}
