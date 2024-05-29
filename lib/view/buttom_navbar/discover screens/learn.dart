import 'package:flutter/material.dart';
import 'package:global_currency/utils/app_urls.dart';

import '../../../theme/text_themes.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 15.h),
               Text('Feature Articles',   style: TextStyle(
                 fontWeight: FontWeight.w700,
                 fontSize: 16.sp,
                 color: TTextTheme.getTextColor(context),
               )),
               SizedBox(height: 15.h),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/listview.png',height: 200),
                          const SizedBox(height: 15),
                           Text("Is Ethereum, the world's second-largest\ncryptocurrency?",  style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                            color: TTextTheme.getTextColor(context),
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ),
               SizedBox(height: 25.h),
               Text('Trending articles',   style: TextStyle(
                 fontWeight: FontWeight.w700,
                 fontSize: 16.sp,
                 color: TTextTheme.getTextColor(context),
               )),
              SizedBox(
                height: 120.h, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Change this to the number of images you want to display
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15), // Adjust spacing between images
                      child: Image.asset('assets/images/listview2.png',height: 121,width: 121,),
                    );
                  },
                ),
              ),

               Text(
                'News',
                   style: TextStyle(
                     fontWeight: FontWeight.w700,
                     fontSize: 16.sp,
                     color: TTextTheme.getTextColor(context),
                   )
              ),

              // Use a ListView.builder to repeat the container
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  // Return the container for each index
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 120,
                      child: Row(
                        children: [
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 9.h),
                              Text(
                                'Ethereum Soars to New\nHeights as Demand and\nAdoption Surge?',
                                  style: Theme.of(context).textTheme.titleSmall
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                'Feb 22, 2024',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 38.w),
                          Image.asset('assets/images/imag1.png'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
