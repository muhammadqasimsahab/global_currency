import 'package:global_currency/view/buttom_navbar/discover%20screens/News.dart';
import 'package:global_currency/view/buttom_navbar/discover%20screens/Podcast.dart';
import 'package:global_currency/view/buttom_navbar/discover%20screens/blog.dart';
import 'package:global_currency/view/buttom_navbar/discover%20screens/learn.dart';

import '../../../utils/app_urls.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Get.isDarkMode
                  ? Colors.white
                  : Colors.black, // Set icon color based on theme
            ),
            leading: InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back)),
            title:  Text('Discover', style: Theme.of(context).textTheme.headlineMedium),
          ),
        body:const Column(
          children: [
            SizedBox(
              height: 30,
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the horizontal spacing as needed
                    child: Tab(
                      child: Center(child: Text('News', textAlign: TextAlign.center,)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the horizontal spacing as needed
                    child: Tab(
                      child: Text('Learn', textAlign: TextAlign.center),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the horizontal spacing as needed
                    child: Tab(
                      child: Text('Blog', textAlign: TextAlign.center),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the horizontal spacing as needed
                    child: Tab(
                      child: Text('Podcast', textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
            child: TabBarView(
              children: [
                NewsScreen(),
               LearnScreen(),
               BlogScreen(),
                PodcastScreen(),
              ],
            ),)
          ],
        )
      ),
    );
  }


}
