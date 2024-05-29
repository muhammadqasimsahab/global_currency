import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:global_currency/widgets/button_widget.dart';
import '../../../theme/text_themes.dart';
import '../../../utils/app_urls.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CreateServices extends StatefulWidget {
  const CreateServices({Key? key}) : super(key: key);

  @override
  State<CreateServices> createState() => _CreateServicesState();
}

class _CreateServicesState extends State<CreateServices> {
  int? selectedIndex;
  String selectedCategory = '';
  // int selectedIndex = -1;
  int selectedIndex1 = -1;
  int selectedIndex2 = -1;
  int selectedIndex3 = -1;

  List names = [
    'business',
    'formal',
    'bank',
    'crypto',
    'optimistic',
    'Formal',
    'realestate',
    'crypto',
    'optimistic',
    'bank',
    'crypto',
    'optimistic',
    'Formal',
    'realestate',
    'crypto',
    'optimistic'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Get.isDarkMode
              ? Colors.white
              : Colors.black, // Set icon color based on theme
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: Text('Create Service',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.h),
              Text('Service Title',
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 18.h),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Service Title',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 18.h),
              Text('Categories',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: TTextTheme.getTextColor(context))),
              SizedBox(height: 16.h),
              SizedBox(
                height: 160.h,
                child: MasonryGridView.builder(
                    itemCount: 16,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {

                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 70.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 1,
                              color: index == selectedIndex ? Colors.blue : Colors.grey,
                            ),
                            gradient: index == selectedIndex
                                ? const LinearGradient(
                              colors: [
                                Color(0xff5FB1FF),
                                Color(0xffFE60F7),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              names[index],
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: TTextTheme.getTextColor(context),
                                )
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 35.h,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: List.generate(
              //       4,
              //           (index) => GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             selectedIndex = index;
              //           });
              //         },
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: Container(
              //             width: 70.w,
              //             height: 28.h,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(30),
              //               border: Border.all(
              //                 width: 1,
              //                 color: index == selectedIndex
              //                     ? Colors.blue
              //                     : Colors.grey,
              //               ),
              //               color: index == selectedIndex
              //                   ? Colors.green
              //                   : Colors.transparent,
              //             ),
              //             child: Center(
              //               child: Text(
              //                 'once',textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     fontSize: 11.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: TTextTheme.getTextColor(context)),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 35.h,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: List.generate(
              //       4,
              //           (index) => GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             selectedIndex1 = index;
              //           });
              //         },
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: Container(
              //             width: 70.w,
              //             height: 28.h,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(30),
              //               border: Border.all(
              //                 width: 1,
              //                 color: index == selectedIndex1
              //                     ? Colors.blue
              //                     : Colors.grey,
              //               ),
              //               color: index == selectedIndex1
              //                   ? Colors.green
              //                   : Colors.transparent,
              //             ),
              //             child: Center(
              //               child: Text(
              //                 'once',textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     fontSize: 11.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: TTextTheme.getTextColor(context)),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 35.h,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: List.generate(
              //       4,
              //           (index) => GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             selectedIndex2 = index;
              //           });
              //         },
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: Container(
              //             width: 70.w,
              //             height: 28.h,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(30),
              //               border: Border.all(
              //                 width: 1,
              //                 color: index == selectedIndex2
              //                     ? Colors.blue
              //                     : Colors.grey,
              //               ),
              //               color: index == selectedIndex2
              //                   ? Colors.green
              //                   : Colors.transparent,
              //             ),
              //             child: Center(
              //               child: Text(
              //                 'once',textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     fontSize: 11.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: TTextTheme.getTextColor(context)),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 35.h,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: List.generate(
              //       4,
              //           (index) => GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             selectedIndex3 = index;
              //           });
              //         },
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: Container(
              //             width: 70.w,
              //             height: 28.h,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(30),
              //               border: Border.all(
              //                 width: 1,
              //                 color: index == selectedIndex3
              //                     ? Colors.blue
              //                     : Colors.grey,
              //               ),
              //               color: index == selectedIndex3
              //                   ? Colors.green
              //                   : Colors.transparent,
              //             ),
              //             child: Center(
              //               child: Text(
              //                 'once',textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     fontSize: 11.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: TTextTheme.getTextColor(context)),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10.h),
              Text('Description',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: TTextTheme.getTextColor(context))),
              SizedBox(height: 18.h),
               TextField(

                keyboardType: TextInputType.multiline,
                maxLines: 7,
                decoration: InputDecoration(
                    hintText: "Enter Service Description",
                    hintStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(width: 1, color: greyColor)
                    )
                ),

              ),

              SizedBox(height: 18.h),
              Text('Set Your Price',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: TTextTheme.getTextColor(context))),
              SizedBox(height: 18.h),
              SizedBox(
                width: 180.w,
                height: 56.h,
                child: const TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Price',
                      hintStyle: TextStyle(color: greyColor),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 37.h),
              Container(
                height: 213.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: greyColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/upload.png', width: 150.w),
                    Text('Choose File',
                        style: Theme.of(context).textTheme.titleMedium)
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Image.asset('assets/images/frame1.png'),
              SizedBox(height: 10.h),
              Image.asset('assets/images/frame1.png'),
              SizedBox(height: 50.h),
              reusableButton(text: 'Post'),
              SizedBox(height: 37.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildThemedContainer({var text}) {
    final isDarkMode = Get.isDarkMode;

    return Container(
      width: 70.w,
      height: 35.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isDarkMode ? blackColor : whiteColor,
        border: Border.all(
          color: isDarkMode ? whiteColor : blackColor,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isDarkMode ? whiteColor : blackColor,
          ),
        ),
      ),
    );
  }
}
