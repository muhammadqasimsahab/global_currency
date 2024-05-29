

import 'package:global_currency/view/trading%20screens/main_home_screen.dart';

import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import '../trading screens/services screen/services_screen_tab.dart';
import '../trading screens/show_coin_detils_screen.dart';

class ProtfolioScreen extends StatefulWidget {
  const ProtfolioScreen({super.key});

  @override
  State<ProtfolioScreen> createState() => _ProtfolioScreenState();
}

class _ProtfolioScreenState extends State<ProtfolioScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
            onTap: (){
              Get.to(()=>const TradingHomeScreen());
            },
            child: const Icon(Icons.arrow_back)),
        title:  Text('My Portfolio', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Watchlist Mode'),
                Tab(text: 'Services'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Table(),
                ServicesTabScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////
class Table extends StatelessWidget {
  const Table({super.key});

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
                Text('#', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: TTextTheme.getTextColor(context))),
                Text('COIN', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: TTextTheme.getTextColor(context))),
                Text('PRICE', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: TTextTheme.getTextColor(context))),
                Text('24H', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: TTextTheme.getTextColor(context))),
                Text('MARKET CAP',
                    style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400, color: TTextTheme.getTextColor(context))),
              ],
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true, // Prevent unnecessary scrolling
              physics:
              const NeverScrollableScrollPhysics(), // Disable scrolling
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Column(
                    children: [
                      GestureDetector(
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
                                style: Theme.of(context).textTheme.titleMedium), // Use index to access number
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.02),
                            Image.asset('${coins[index]}', width: 34),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.01),
                            Text(coinNames[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: TTextTheme.getTextColor(context),
                                )),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.08),
                            Text("\$${amount.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: TTextTheme.getTextColor(context),
                                )),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.07),
                            const Text('0.0%',
                                style: TextStyle(color: Colors.green)),
                            const Icon(Icons.keyboard_arrow_up_sharp,
                                color: Colors.green),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.07),
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
