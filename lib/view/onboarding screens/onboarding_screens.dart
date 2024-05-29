//
// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   late PageController _pageController;
//   int _pageIndex = 0;
//
//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: PageView.builder(
//           itemCount: demo_data.length,
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() {
//               _pageIndex = index;
//             });
//           },
//           itemBuilder: (context, index) => Column(
//             children: [
//               Image.asset(demo_data[index].image),
//               Text('data'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ...List.generate(
//                     demo_data.length,
//                         (index) => AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       height: 4,
//                       width: _pageIndex == index ? 12 : 4,
//                       decoration: BoxDecoration(
//                         color: _pageIndex == index ? Colors.purple : Colors.red,
//                         borderRadius: const BorderRadius.all(Radius.circular(12)),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 60,
//                     width: 60,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         _pageController.nextPage(
//                           duration: const Duration(milliseconds: 300),
//                           curve: Curves.ease,
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(shape: const CircleBorder()),
//                       child: const Icon(Icons.arrow_forward),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Onboard {
//   final String image, title, description;
//
//   Onboard({
//     required this.image,
//     required this.title,
//     required this.description,
//   });
// }
//
// final List<Onboard> demo_data = [
//   Onboard(
//     image: 'assets/images/splash1.jpeg',
//     title: 'That is my Onboarding Screen 1',
//     description: "That is for all the screens that can be used in the project",
//   ),
//   Onboard(
//     image: 'assets/images/splash2.jpeg',
//     title: 'That is my Onboarding Screen 2',
//     description: "That is for all the screens that can be used in the project",
//   ),
//   Onboard(
//     image: 'assets/images/splash3.jpeg',
//     title: 'That is my Onboarding Screen 3',
//     description: "That is for all the screens that can be used in the project",
//   ),
// ];


import 'package:global_currency/utils/app_urls.dart';
import 'package:global_currency/view/home_activity.dart';

late PageController _pageController;
int _pageIndex = 0;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: demo_data.length,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPage(
                  onboard: demo_data[index],
                  currentPage: index,
                  totalPage: demo_data.length,
                );
              },
            ),
            Positioned(
              top: 10,
              right: 10,
              child: TextButton(
                onPressed: () {
                  Get.to(() => const HomeScreen());
                },
                child: Row(
                  children: [
                    const Text('Skip', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 5.w),
                    const Icon(Icons.arrow_forward, color: whiteColor)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final Onboard onboard;
  final int currentPage;
  final int totalPage;

  const OnboardingPage({
    required this.onboard,
    required this.currentPage,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: onboard.image),
        PositionedBottomContent(
          title: onboard.title,
          description: onboard.description,
          currentPage: currentPage,
          totalPage: totalPage,
        ),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String image;

  const BackgroundImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

class PositionedBottomContent extends StatelessWidget {
  final String title;
  final String description;
  final int currentPage;
  final int totalPage;

  const PositionedBottomContent({
    required this.title,
    required this.description,
    required this.currentPage,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 230.h,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                textAlign: TextAlign.start,
                style:  TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Text(description,
                style:  TextStyle(fontSize: 13.sp, color: Colors.black)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        totalPage,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 4,
                          width: currentPage == index ? 16.w : 4.w,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? Colors.purple
                                : Colors.red,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
          onTap: () {
            if (_pageIndex == demo_data.length - 1) {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else {

              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            }
          },
                  child: Container(
                    height: 45.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ],
                      ),
                    ),
                    child: const Icon(Icons.arrow_forward_ios_rounded,color: whiteColor),
                  ),
                )
                // SizedBox(
                //   height: 60,
                //   width: 60,
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if (_pageIndex == demo_data.length - 1) {
                //         // Navigate to the home screen
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(builder: (context) => const HomeScreen()),
                //         );
                //       } else {
                //         // Navigate to the next onboarding page
                //         _pageController.nextPage(
                //           duration: const Duration(milliseconds: 300),
                //           curve: Curves.ease,
                //         );
                //       }
                //     },
                //     style:
                //         ElevatedButton.styleFrom(shape: const CircleBorder()),
                //     child: const Icon(Icons.arrow_forward_ios),
                //   ),
                // ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: 'assets/images/splash1.jpeg',
    title: 'Fostering Global Unity Through\nGlobal Currency',
    description:
        "By default, a TextField is decorated with an underline. You can add a label, icon, inline hint text, and error text by supplying an InputDecoration as the decoration property of the TextField.",
  ),
  Onboard(
    image: 'assets/images/splash2.jpeg',
    title: 'Empowering Individuals as the\nTrue Currency of the World',
    description:
        "I suspect it's something to do with the predictive text. The underlines disappear when you press the space bar to end the word you're typing; they then start appearing again when you start typing.",
  ),
  Onboard(
    image: 'assets/images/splash3.jpeg',
    title: 'Harnessing Human Potential\nFor Global Impact',
    description:
        "o remove the Flutter textfield underline border, you have to use the decoration constructor of the Flutter textfield. I have passed the input decoration class to the decoration constructor and by.",
  ),
];
