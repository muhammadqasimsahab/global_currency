import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_currency/widgets/button_widget.dart';

import '../../theme/text_themes.dart';

class ExchangesScreen extends StatefulWidget {
  const ExchangesScreen({Key? key}) : super(key: key);

  @override
  State<ExchangesScreen> createState() => _ExchangesScreenState();
}

class _ExchangesScreenState extends State<ExchangesScreen> {
  final List name = [
    'Milady Maker',
    'TokenTrove',
    'NiftyGems',
    'CryptoCanvas',
    'CryptoCanvas',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 26),
            Row(
              children: [
                Text('NFT',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                SizedBox(width: 120.w),
                Text('REPORTED VOLUME',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                SizedBox(width: 25.w),
                Text('TRUST ',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                const SizedBox(width: 27),
              ],
            ),
            const SizedBox(height: 26),
            Expanded(
              child: ListView.builder(
                itemCount:
                    5, // Change the number of times you want to repeat the row
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/person1.png', scale: 3),
                          const SizedBox(width: 8),
                          SizedBox(
                              width: 100.w,
                              child: Text('${name[index]}',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: TTextTheme.getTextColor(context)))
                          ),
                           SizedBox(width: 27.w),
                          Text("\$1234566766",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context))),
                           SizedBox(width: 27.w),
                          SizedBox(
                              width: 70,
                              height: 23,
                              child: reusableButton(text: '10/10'))
                        ],
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
