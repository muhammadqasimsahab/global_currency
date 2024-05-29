import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import '../../widgets/drapdown_menu.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Topcoins',  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: TTextTheme.getTextColor(context))),
                Text('Category', style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: TTextTheme.getTextColor(context))),
                const DropDownMenu()
                ,Text('M.CAP', style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: TTextTheme.getTextColor(context))),

              ],
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Change the number of times you want to repeat the row
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/person1.png', scale: 4),
                           SizedBox(width: 2.w),
                          Image.asset('assets/images/person1.png', scale: 4),
                           SizedBox(width: 2.w),
                          Image.asset('assets/images/person1.png', scale: 4),
                           SizedBox(width: 14.w),
                          Text(
                            'Cat Themed\nCoins',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TTextTheme.getTextColor(context))
                          ),
                           SizedBox(width: 10.w),
                          Column(
                            children: [
                              Text(
                                '\$10,020',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: TTextTheme.getTextColor(context))
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.keyboard_arrow_up_outlined,
                                      color: Colors.green),
                                  Text('34.3%',
                                      style: TextStyle(color: Colors.green))
                                ],
                              ),
                            ],
                          ),
                           SizedBox(width: 18.w),
                          Column(
                            children: [
                              Text(
                                '\$3,798,000',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: TTextTheme.getTextColor(context))
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.keyboard_arrow_up_outlined,
                                      color: Colors.green),
                                  Text('34.3%',
                                      style: TextStyle(color: Colors.green))
                                ],
                              ),
                            ],
                          )
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


/*   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Topcoins',style: TextStyle(color: blackColor,fontSize: 15.sp,fontWeight: FontWeight.w400),),
                Text('Category',style: TextStyle(color: blackColor,fontSize: 15.sp,fontWeight: FontWeight.w400),),
                DropDownMenu()
                ,Text('Category',style: TextStyle(color: blackColor,fontSize: 15.sp,fontWeight: FontWeight.w400),),

              ],
            ),*/