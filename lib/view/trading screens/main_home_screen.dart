import 'package:global_currency/view/buttom_navbar/chat_screen.dart';
import 'package:global_currency/view/buttom_navbar/discover%20screens/discover_screen.dart';
import 'package:global_currency/view/buttom_navbar/protfolio_screen.dart';
import 'package:global_currency/view/trading%20screens/tabbarview_screen.dart';
import '../../utils/app_urls.dart';
import '../buttom_navbar/more screens/more_screen.dart';

class TradingHomeScreen extends StatefulWidget {
  const TradingHomeScreen({Key? key}) : super(key: key);

  @override
  State<TradingHomeScreen> createState() => _TradingHomeScreenState();
}

class _TradingHomeScreenState extends State<TradingHomeScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = [
    const TabbarView(),
    const ProtfolioScreen(),
    const DiscoverScreen(),
    const ChatScreen(),
    const MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black,
            ),
            backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black),
            selectedItemColor: Get.isDarkMode
                ? Colors.white
                : Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.auto_graph_outlined,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                label: 'Market',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                label: 'Portfolio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.av_timer_sharp,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined,
                      color: Get.isDarkMode ? Colors.white : Colors.black),
                  label: 'Chat'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: 'More',
              ),
            ],
          
          ),
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
