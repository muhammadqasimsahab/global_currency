import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:global_currency/view/trading%20screens/services%20screen/create_services.dart';
import 'package:global_currency/view/trading%20screens/services%20screen/detail.dart';
import '../../../utils/app_urls.dart';
import 'package:global_currency/widgets/button_widget.dart';

class ServicesTabScreen extends StatefulWidget {
  const ServicesTabScreen({Key? key}) : super(key: key);

  @override
  State<ServicesTabScreen> createState() => _ServicesTabScreenState();
}

class _ServicesTabScreenState extends State<ServicesTabScreen> {
  int _currentIndex = 0;
  int number=800;
  final List<String> imageList = [
    'assets/images/silder1.png',
    'assets/images/silder1.png',
    'assets/images/silder1.png',
    'assets/images/silder1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 20.h),
           SizedBox(
             height: 447.h,
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [ Container(
                   margin: const EdgeInsets.symmetric(horizontal: 10),
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   decoration: BoxDecoration(
                       border: Border.all(width: 1, color: greyColor),
                       borderRadius: BorderRadius.circular(10)),
                   child: const TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       focusedBorder: InputBorder.none,
                       enabledBorder: InputBorder.none,
                       errorBorder: InputBorder.none,
                       disabledBorder: InputBorder.none,
                       icon: Icon(Icons.search),
                       hintText: 'Search by name or by tag',
                     ),
                   ),
                 ),
                   SizedBox(height: 24.h),
                   Text('Featured Services',
                       style: Theme.of(context)
                           .textTheme
                           .headlineLarge), //headlineLarge
                   const SizedBox(height: 24),
                   CarouselSlider(
                     items: imageList.map((imagePath) {
                       return Stack(
                         children: <Widget>[
                           ClipRRect(
                               borderRadius: BorderRadius.circular(10.0),
                               child: Image.asset(imagePath, fit: BoxFit.cover)),
                           Positioned(
                             bottom: 8.0,
                             left: 8.0,
                             right: 8.0,
                             child: Column(
                               children: [
                                 Text(
                                     'Transform Your Business with Results-Driven\nMarketing Solutions!',
                                     style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700,color: whiteColor)),
                                 Row(
                                   children: [
                                     const Text('Offered By:',
                                         style: TextStyle(
                                             color: whiteColor,
                                             fontSize: 11,
                                             fontWeight: FontWeight.w400)),const Text('  Josiah Makoir',
                                         style: TextStyle(
                                             color: Color(0xffE0E0E0),
                                             fontSize: 11,
                                             fontWeight: FontWeight.w400)),
                                     const Spacer(),
                                     Text(
                                         "\$${number.toStringAsFixed(0)}",
                                         style: TextStyle(
                                             color: whiteColor,
                                             fontSize: 22.sp,
                                             fontWeight: FontWeight.w700)),
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ],
                       );
                     }).toList(),
                     options: CarouselOptions(
                       height: MediaQuery.of(context).size.height * 0.27,
                       pauseAutoPlayOnTouch: false,
                       aspectRatio: 1,
                       enlargeCenterPage: true,
                       onPageChanged: (index, reason) {
                         setState(() {
                           _currentIndex = index;
                         });
                       },
                       viewportFraction: 1,
                       initialPage: 0,
                       enableInfiniteScroll: true,
                       autoPlay: true,
                       autoPlayInterval: const Duration(seconds: 5),
                       reverse: false,
                     ),
                   ),
                   const SizedBox(height: 24),
                   ListView.builder(
                     itemCount: 3,
                     shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     itemBuilder: (BuildContext context, int index) {
                       return Padding(
                         padding: const EdgeInsets.symmetric(vertical: 24),
                         child: InkWell(
                           onTap: () => Get.to(() => DetailScreen()),
                           child: SizedBox(
                             height: 101.h,
                             child: Row(
                               children: [
                                 Image.asset('assets/images/small.png'),
                                 SizedBox(width: 2.w),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                         'Legal Excellence, Your\nTrusted Advocates: Legal\nSolutions',
                                         style: Theme.of(context)
                                             .textTheme
                                             .titleMedium),
                                     SizedBox(height: 10.h),
                                     Text('Offered By: Josiah Makoir',
                                         style: Theme.of(context)
                                             .textTheme
                                             .bodySmall), //bodySmall
                                     // SizedBox(height: 16.h),
                                     Text('Price 40',
                                         style: Theme.of(context)
                                             .textTheme
                                             .bodySmall),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ),
                       );
                     },
                   ),
                   SizedBox(height: 50.h),],
               ),
             )
           ),
            InkWell(
                onTap: () {
                  Get.to(() => const CreateServices());
                },
                child: reusableButton(text: 'Create Service')),
          ],
        ),
      ),
    );
  }
}
