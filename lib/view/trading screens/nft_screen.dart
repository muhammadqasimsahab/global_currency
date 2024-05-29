import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_currency/view/trading%20screens/person_detials_screen.dart';

import '../../theme/color_themes.dart';
import '../../theme/text_themes.dart';
import '../../utils/app_colors.dart';
import '../../widgets/drapdown_menu.dart';

class NFTScreen extends StatefulWidget {
  const NFTScreen({super.key});

  @override
  State<NFTScreen> createState() => _NFTScreenState();
}

class _NFTScreenState extends State<NFTScreen> {
  final List images = [
    'assets/images/person1.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person1.png',
    'assets/images/person1.png',
  ];
  final List name = [
    'Milady Maker',
    'TokenTrove',
    'NiftyGems',
    'CryptoCanvas',
    'CryptoCanvas',
  ];
  int number=100;
  var number1='3,325,000';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(children: [
                Container(
                  width: 100.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? TColorTheme.backgroundColorLight
                          : TColorTheme.backgroundColorDark,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(child: DropDownMenu()),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 100.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? TColorTheme.backgroundColorLight
                          : TColorTheme.backgroundColorDark,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(child: DropDownMenu()),
                ),
              ]),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text('NFT',
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: TTextTheme.getTextColor(context))),
                  const SizedBox(width: 117),
                  Text('FLOOR PRICE ',
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: TTextTheme.getTextColor(context))),
                  const SizedBox(width: 27),
                  const DropDownMenu()
                ],
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonDetailsScreen(
                              image: images[index],
                              names: name[index],
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('${images[index]}', width: 32),
                              const SizedBox(width: 5),
                              SizedBox(
                                width: 100.w,
                                child: Text('${name[index]}',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: TTextTheme.getTextColor(context)))
                              ),
                              SizedBox(width: 10.w),
                              SizedBox(

                                width: 70,
                                child: Column(
                                  children: [
                                    Text(  "\$${number.toStringAsFixed(0)}",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: TTextTheme.getTextColor(context))),
                                    const Row(children: [
                                      Icon(Icons.keyboard_arrow_up_outlined,
                                          color: Colors.green),
                                      Text('34.3%',
                                          style: TextStyle(color: Colors.green))
                                    ])
                                  ],
                                ),
                              ),
                               SizedBox(width: 30.w),
                              SizedBox(

                                width: 85.w,
                                child: Column(
                                  children: [
                                    Text( "\$${number1}",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: TTextTheme.getTextColor(context))),
                                    const Row(
                                      children: [
                                        Icon(Icons.keyboard_arrow_up_outlined,
                                            color: Colors.green),
                                        Text('34.3%',
                                            style: TextStyle(color: Colors.green))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
