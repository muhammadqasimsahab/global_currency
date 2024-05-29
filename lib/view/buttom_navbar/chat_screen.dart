import '../../theme/color_themes.dart';
import '../../theme/icons_themes.dart';
import '../../utils/app_urls.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back)),
          // title:  Text('Discover', style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                Text('Chat with AI Powered by\nGPT - 4',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? TColorTheme.backgroundColorLight
                          : TColorTheme.backgroundColorDark,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/rebort.png', width: 48.w),
                          SizedBox(width: 10.w),
                          Text('Your AI Bot',
                              style: Theme.of(context).textTheme.labelLarge),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5),
                          Icon(
                            Icons.watch_later_outlined,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? TIconColorTheme.iconColorDark
                                    : TIconColorTheme.iconColorLight,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Text('How Can I Help You?',
                          style: Theme.of(context).textTheme.headlineLarge),
                      SizedBox(height: 5.h),
                      Container(
                        height: 70.h,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'What is the current price of Bitcoin/Ethereum/other cryptocurrencies?',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? TColorTheme.textColorDark
                                  : TColorTheme.textColorLight,
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:
                                Get.isDarkMode ? Colors.black : Colors.white),
                        child: Center(
                            child: Text(
                          'What is the current price of Bitcoin/Ethereum/other cryptocurrencies?',
                          style: TextStyle(
                            color: Get.isDarkMode
                                ? TColorTheme.textColorDark
                                : TColorTheme.textColorLight,
                            fontSize: 11.sp,
                          ),
                        )),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 70.h,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          'What is the current price of Bitcoin/Ethereum/other cryptocurrencies?',
                          style: TextStyle(
                            color: Get.isDarkMode
                                ? TColorTheme.textColorDark
                                : TColorTheme.textColorLight,
                            fontSize: 11.sp,
                          ),
                        )),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: const TextStyle(color: blackColor),
                              decoration: InputDecoration(
                                  fillColor: Get.isDarkMode
                                      ? TColorTheme.textColorDark
                                      : TColorTheme.textColorLight,
                                  hintText: 'Write here',
                                  hintStyle: const TextStyle(color: greyColor),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            width: 60.w,
                            height: 54.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff5FB1FF),
                                  Color(0xffFE60F7),
                                ],
                              ),
                            ),
                            child: const Icon(Icons.send, color: Colors.white),
                          ),

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
