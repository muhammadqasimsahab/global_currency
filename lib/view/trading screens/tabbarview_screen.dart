import 'package:global_currency/view/trading%20screens/Category_screen.dart';
import 'package:global_currency/view/trading%20screens/Cryptocurrency_screen.dart';
import 'package:global_currency/view/trading%20screens/Exchanges_screen.dart';
import 'package:global_currency/view/trading%20screens/derivatives_screen.dart';
import 'package:global_currency/view/trading%20screens/nft_screen.dart';
import 'package:global_currency/view/welcom_back_activity.dart';

import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({super.key});

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabbarViewState extends State<TabbarView> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Market', style: Theme.of(context).textTheme.headlineMedium),
        iconTheme: IconThemeData(
            color: Get.isDarkMode
                ? Colors.white
                : Colors.black // Set icon color based on theme
            ),
        leading: InkWell(
            onTap: () {
              Get.to(() => const WelcomeBackScreen());
            },
            child: const Icon(Icons.arrow_back)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_none),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          // labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
          isScrollable: true,
          // indicatorSize: TabBarIndicatorSize.label,
          tabAlignment: TabAlignment.center,
          // labelStyle:   TextStyle(
          //   fontSize: 14.sp,
          //   fontWeight: FontWeight.w400,
          //   color: TTextTheme.getTextColor(context)),
          tabs: const <Widget>[
            Tab(text: 'Cryptocurrency'),
            Tab(text: 'NFT'),
            Tab(text: 'Category'),
            Tab(text: 'Exchanges'),
            Tab(text: 'Derivatives'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CryptocurrencyScreen(),
          NFTScreen(),
          CategoryScreen(),
          ExchangesScreen(),
          DerivativesScreen()
        ],
      ),
    );
  }
}
