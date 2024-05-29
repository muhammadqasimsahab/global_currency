import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import '../../widgets/button_widget.dart';

class DerivativesScreen extends StatefulWidget {
  const DerivativesScreen({super.key});

  @override
  State<DerivativesScreen> createState() => _DerivativesScreenState();
}

class _DerivativesScreenState extends State<DerivativesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            SizedBox(height: 26.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('EXCHANGES',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                Row(
                  children: [
                    Text('OPEN VOLUME',
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: TTextTheme.getTextColor(context))),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                Text('24VOLUME',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context)))
              ],
            ),
            SizedBox(height: 26.h),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/btc.png', scale: 3),
                          SizedBox(width: 8.w),
                          Text('Milady Maker',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context))),
                           SizedBox(width: 30.w),
                          Text('\$12,345,000',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context))),
                           SizedBox(width: 28.w),
                          Text('\78,345,000',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context))),
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
