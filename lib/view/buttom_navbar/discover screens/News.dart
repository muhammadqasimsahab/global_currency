import 'package:global_currency/utils/app_urls.dart';

import '../../../theme/color_themes.dart';
import '../../../theme/text_themes.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // Define the number of times you want to repeat the container
  final int numberOfContainers = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            Text('News', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 18),
            // Use a ListView.builder to repeat the container
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  // Return the container for each index
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 100.h,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                  'Ethereum Soars to New\nHeights as Demand and\nAdoption Surge?',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              SizedBox(height: 10.h),
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
            ),
          ],
        ),
      ),
    );
  }
}
