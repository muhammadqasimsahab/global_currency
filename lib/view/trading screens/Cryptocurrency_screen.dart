import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_currency/view/trading%20screens/add_price_alert.dart';
import 'package:global_currency/view/trading%20screens/show_coin_detils_screen.dart';
import 'package:share/share.dart';

import '../../theme/color_themes.dart';
import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import '../../widgets/drapdown_menu.dart';

class CryptocurrencyScreen extends StatefulWidget {
  const CryptocurrencyScreen({super.key});

  @override
  State<CryptocurrencyScreen> createState() => _CryptocurrencyScreenState();
}

class _CryptocurrencyScreenState extends State<CryptocurrencyScreen>
    with SingleTickerProviderStateMixin {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  List<FlSpot> chartData = [const FlSpot(0, 9)];

  final List lineImage = [
    'assets/images/line1.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
    'assets/images/line.png',
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? TColorTheme.backgroundColorLight
                                  : TColorTheme.backgroundColorDark,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('BTC /ETH',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const Text('-2.24%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color(0xffFF3D00))),
                            ],
                          ),
                          SizedBox(height: 12.h),
                          const Text(
                            '8360.90',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Color(0xffFF3D00)),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 81.h,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset('${lineImage[index]}',
                                    scale: 2.2)),
                            // child: LineChart(
                            //   LineChartData(
                            //     borderData: FlBorderData(show: false),
                            //     lineBarsData: [
                            //       LineChartBarData(spots: chartData)
                            //     ],
                            //   ),
                            // ),
                          ),
                          Text('=52974.43 CNY',
                              style: Theme.of(context).textTheme.labelMedium),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ///////////////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 28.h,
              child: Theme(
                data: theme.copyWith(
                  colorScheme: theme.colorScheme
                      .copyWith(surfaceVariant: Colors.transparent),
                ),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.white,
                  tabAlignment: TabAlignment.center,
                  // indicator: BoxDecoration(
                  //   color: Theme.of(context).brightness == Brightness.light
                  //       ? TColorTheme.backgroundColorLight
                  //       : TColorTheme.backgroundColorDark,
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 80.w,
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? TColorTheme.backgroundColorLight
                                    : TColorTheme.backgroundColorDark,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text('USD /BTC',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp,
                                  color: TTextTheme.getTextColor(context),
                                ))),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 100.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? TColorTheme.backgroundColorLight
                                    : TColorTheme.backgroundColorDark,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(child: DropDownMenu()),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 100.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? TColorTheme.backgroundColorLight
                                    : TColorTheme.backgroundColorDark,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(child: DropDownMenu()),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 170.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? TColorTheme.backgroundColorLight
                                    : TColorTheme.backgroundColorDark,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text('Sort by Market Cap',
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Table(),
                  Text('second', style: TextStyle(color: Colors.black)),
                  Text('3', style: TextStyle(color: Colors.black)),
                  Text('5', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Table extends StatefulWidget {
  const Table({Key? key}) : super(key: key);

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double amount = 51612.12;
    double value = 51612.12;
    final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
    final List coins = [
      'assets/images/btc.png',
      'assets/images/eth.png',
      'assets/images/bnb.png',
      'assets/images/dogi.png',
      'assets/images/Vector.png',
      'assets/images/btc.png',
      'assets/images/bnb.png',
      'assets/images/dogi.png',
    ];
    final List<String> coinNames = [
      'BTC',
      'ETH',
      'BNB',
      'Doge',
      'MATI',
      'BTC',
      'ETH',
      'BNB',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('#',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                Text('COIN',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                Text('PRICE',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                Text('24H',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
                Text('MARKET CAP',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: TTextTheme.getTextColor(context))),
              ],
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: IndexedStack(
                      index: index == _selectedIndex ? 1 : 0,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShowCoinDetailsScreen(
                                      image: coins[index],
                                      price: "\$${amount.toStringAsFixed(2)}",
                                      name: coinNames[index],
                                    ),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Text('${numbers[index]}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  SizedBox(width: 10.w),
                                  Image.asset('${coins[index]}', width: 34),
                                  SizedBox(width: 5.w),
                                  Text(coinNames[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: TTextTheme.getTextColor(context)
                                      )),
                                  SizedBox(width: 30.w),
                                  Text("\$${amount.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: TTextTheme.getTextColor(context),
                                      )),
                                  SizedBox(width: 30.w),
                                  const Text('0.0%',
                                      style: TextStyle(color: Colors.green)),
                                  const Icon(Icons.keyboard_arrow_up_sharp,
                                      color: Colors.green),
                                  SizedBox(width: 20.w),
                                  Text("\$${value.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: TTextTheme.getTextColor(context),
                                      )),
                                ],
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = -1;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SizedBox(width: 20.w),
                                const Text('0.0%',
                                    style: TextStyle(color: Colors.green)),
                                const Icon(Icons.keyboard_arrow_up_rounded,
                                    color: Colors.green),
                                SizedBox(width: 16.w),
                                const Text('\$3040.25'),
                                SizedBox(width: 6.w),
                                InkWell(
                                  onTap: () {
                                    _shareContent();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff5FB1FF),
                                          Color(0xffFE60F7),
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.share,
                                            color: Colors.white),
                                        Text('Share',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const AddPriceAlert());
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 70,
                                    decoration:
                                        const BoxDecoration(color: Colors.green),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.notifications_none,
                                            color: Colors.white),
                                        Text('Price Alert',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _showPortfolioDialog(context);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff0022E4)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.star_border,
                                            color: Colors.white),
                                        Text('Portfolio',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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

void _shareContent() {
  // Replace the share content with your desired text or URL to share
  Share.share('Check out this cool content!');
}

void _showPortfolioSnackbar(BuildContext context) {
  final snackBar = SnackBar(
    content: SizedBox(
      height: 60.0, // Adjust the height according to your preference
      child: Center(
        child: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 45),
            Text(
              'Successfully Added to Portfolio',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Theme.of(context).brightness == Brightness.light
        ? TColorTheme.backgroundColorLight
        : TColorTheme.backgroundColorDark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void _showPortfolioDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Add to Portfolio",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                _showPortfolioSnackbar(context);
              },
              child: const Text(
                "My portfolio",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
