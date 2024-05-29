import '../../../theme/text_themes.dart';
import '../../../utils/app_urls.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:10 ),
             Text(
              'Blog',
                style: Theme.of(context).textTheme.headlineSmall
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
                            SizedBox(height: 6),
                            Text(
                              'Ethereum Soars to New\nHeights as Demand and\nAdoption Surge?',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                            SizedBox(height: 10),
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
    );
  }
}
