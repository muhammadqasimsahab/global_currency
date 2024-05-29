import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../theme/color_themes.dart';
import '../../theme/text_themes.dart';
import '../../utils/app_urls.dart';
import 'package:intl/intl.dart';

class PersonDetailsScreen extends StatefulWidget {
  var image;
  var names;
  PersonDetailsScreen({super.key, required this.image, required this.names});

  @override
  State<PersonDetailsScreen> createState() => _PersonDetailsScreenState();
}

class _PersonDetailsScreenState extends State<PersonDetailsScreen> {
  var number = "24,108.38";
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  List<FlSpot> chartData = [const FlSpot(0, 9)];
  late List<ChartSampleData> _chartData;
  int selectedIndex = 0;
  late TrackballBehavior _trackballBehavior;
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
  void initState() {
    _chartData = getChartData();
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.initState();
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Get.isDarkMode
                  ? Colors.white
                  : Colors.black, // Set icon color based on theme
            ),
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back)),
            title: Row(
              children: [
                Image.asset(widget.image, width: 32),
                const SizedBox(width: 10),
                Text(widget.names,
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: TTextTheme.getTextColor(context)))
              ],
            ),
            actions: const [Icon(Icons.notifications_none, size: 30)]),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(  "\$$number",
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: TTextTheme.getTextColor(context))),
                 SizedBox(height: 7.h),
                Row(
                  children: [
                    const Icon(Icons.keyboard_arrow_up_outlined, color: Colors.green),
                    Text("\$234,00",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: TTextTheme.getTextColor(context))),
                    SizedBox(width: 7.w),
                    const Text('+8.1%',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter'))
                  ],
                ),
                SizedBox(height: 11.h),
                Text('24H Change',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: TTextTheme.getTextColor(context))),
                SizedBox(height: 20.h),
                SfCartesianChart(
                  trackballBehavior: _trackballBehavior,
                  series: <CandleSeries>[
                    CandleSeries<ChartSampleData, DateTime>(
                        dataSource: _chartData,
                        xValueMapper: (ChartSampleData sales, _) => sales.x,
                        lowValueMapper: (ChartSampleData sales, _) => sales.low,
                        highValueMapper: (ChartSampleData sales, _) =>
                            sales.high,
                        openValueMapper: (ChartSampleData sales, _) =>
                            sales.open,
                        closeValueMapper: (ChartSampleData sales, _) =>
                            sales.close)
                  ],
                  primaryXAxis: DateTimeAxis(
                    maximumLabelWidth: 65,
                    dateFormat:
                        DateFormat('hh:mm a'), // Format for displaying time
                    interval: 2, // Display time labels for every 2 hours
                  ),
                  primaryYAxis: NumericAxis(
                      minimum: 70.02,
                      maximum: 130.25,
                      interval: 10.25,
                      numberFormat: NumberFormat.decimalPattern(),
                      opposedPosition:
                          true, // Align value axis to the right side
                      majorGridLines: const MajorGridLines(width: 2, dashArray: [
                        5,
                        5
                      ] // Set the dash pattern for the dotted line
                          )),
                  borderWidth: 0,
                ),
                SizedBox(height: 11.h),
                Container(
                  height: 33,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.grey[200]
                        : Colors.grey[800],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildTab(0, '24h'), // Build each tab with index and label
                      buildTab(1, '7d'),
                      buildTab(2, '30d'),
                      buildTab(3, '90d'),
                      buildTab(4, '1y'),
                      buildTab(5, 'All'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.31,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? TColorTheme.backgroundColorLight
                                  : TColorTheme.backgroundColorDark,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.arrow_drop_up_outlined, size: 40),
                                  Text(
                                    '-0.74%',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                               SizedBox(height: 5.h),
                              Text('8360.90',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: double.infinity,
                                height: 60.h,
                                child: Text("\$113,519,019,089",style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: TTextTheme.getTextColor(context))),
                                // child: LineChart(
                                //   LineChartData(
                                //     borderData: FlBorderData(show: false),
                                //     lineBarsData: [
                                //       LineChartBarData(spots: chartData),
                                //     ],
                                //   ),
                                // ),
                              ),
                              Text('MARKETCAP',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: TTextTheme.getTextColor(context))),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 131.h,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: greyColor)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Overview',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: TTextTheme.getTextColor(context))
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'High',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          const Text(
                              '650.02',
                              style: TextStyle(color: Colors.green)
                          ),
                          Text(
                              'Mkt Cap',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          Text(
                              '113,519,019,089',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'High',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          const Text(
                              '650.02',
                              style: TextStyle(color: Colors.green)
                          ),
                          Text(
                              'Mkt Cap',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          Text(
                              '113,519,019,089',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'High',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          const Text(
                              '650.02',
                              style: TextStyle(color: Colors.green)
                          ),
                          Text(
                              'Mkt Cap',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                          Text(
                              '113,519,019,089',
                              style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: const Color(0xff828282))
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildTab(int index, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; // Update the selected index
        });
      },
      child: Container(
        width: 50,
        height: 22,
        decoration: BoxDecoration(
          color: selectedIndex == index // Highlight the selected tab
              ? Theme.of(context).brightness == Brightness.light
              ? Colors.blue[200]
              : Colors.blue[800]
              : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(
          x: DateTime(2024, 01, 11),
          open: 98.97,
          high: 101.19,
          low: 95.36,
          close: 97.13),
      ChartSampleData(
          x: DateTime(2024, 01, 18),
          open: 98.41,
          high: 101.46,
          low: 93.42,
          close: 101.42),
      ChartSampleData(
          x: DateTime(2024, 01, 25),
          open: 101.52,
          high: 101.53,
          low: 92.39,
          close: 97.34),
      ChartSampleData(
          x: DateTime(2024, 02, 01),
          open: 96.47,
          high: 97.33,
          low: 93.69,
          close: 94.02),
      ChartSampleData(
          x: DateTime(2024, 02, 08),
          open: 93.13,
          high: 96.35,
          low: 92.59,
          close: 93.99),
      ChartSampleData(
          x: DateTime(2024, 02, 15),
          open: 91.02,
          high: 94.89,
          low: 90.61,
          close: 92.04),
      ChartSampleData(
          x: DateTime(2024, 02, 22),
          open: 96.31,
          high: 98.0237,
          low: 98.0237,
          close: 96.31),
      ChartSampleData(
          x: DateTime(2024, 02, 29),
          open: 99.86,
          high: 106.75,
          low: 99.65,
          close: 106.01),
      ChartSampleData(
          x: DateTime(2024, 03, 07),
          open: 102.39,
          high: 102.83,
          low: 100.15,
          close: 102.26),
      ChartSampleData(
          x: DateTime(2024, 03, 14),
          open: 101.91,
          high: 106.5,
          low: 101.78,
          close: 105.92),
      ChartSampleData(
          x: DateTime(2024, 03, 21),
          open: 105.93,
          high: 107.65,
          low: 104.89,
          close: 105.67),
      ChartSampleData(
          x: DateTime(2024, 03, 28),
          open: 106,
          high: 110.42,
          low: 104.88,
          close: 109.99),
      ChartSampleData(
          x: DateTime(2024, 04, 04),
          open: 110.42,
          high: 112.19,
          low: 108.121,
          close: 108.66),
      ChartSampleData(
          x: DateTime(2024, 04, 11),
          open: 108.97,
          high: 112.39,
          low: 108.66,
          close: 109.85),
      ChartSampleData(
          x: DateTime(2024, 04, 18),
          open: 108.89,
          high: 108.95,
          low: 104.62,
          close: 105.68),
      ChartSampleData(
          x: DateTime(2024, 04, 25),
          open: 105,
          high: 105.65,
          low: 92.51,
          close: 93.74),
      ChartSampleData(
          x: DateTime(2024, 05, 02),
          open: 93.965,
          high: 95.9,
          low: 91.85,
          close: 92.72),
      ChartSampleData(
          x: DateTime(2024, 05, 09),
          open: 93,
          high: 93.77,
          low: 89.47,
          close: 90.52),
      ChartSampleData(
          x: DateTime(2024, 05, 16),
          open: 92.39,
          high: 95.43,
          low: 91.65,
          close: 95.22),
      ChartSampleData(
          x: DateTime(2024, 05, 23),
          open: 95.87,
          high: 100.73,
          low: 95.67,
          close: 100.35),
      ChartSampleData(
          x: DateTime(2024, 05, 30),
          open: 99.6,
          high: 100.4,
          low: 96.63,
          close: 97.92),
      ChartSampleData(
          x: DateTime(2024, 06, 06),
          open: 97.99,
          high: 101.89,
          low: 97.55,
          close: 98.83),
      ChartSampleData(
          x: DateTime(2024, 06, 13),
          open: 98.69,
          high: 99.12,
          low: 95.3,
          close: 95.33),
      ChartSampleData(
          x: DateTime(2024, 06, 20),
          open: 96,
          high: 96.89,
          low: 92.65,
          close: 93.4),
      ChartSampleData(
          x: DateTime(2024, 06, 27),
          open: 93,
          high: 96.465,
          low: 91.5,
          close: 95.89),
      ChartSampleData(
          x: DateTime(2024, 07, 04),
          open: 95.39,
          high: 96.89,
          low: 94.37,
          close: 96.68),
      ChartSampleData(
          x: DateTime(2024, 07, 11),
          open: 96.75,
          high: 99.3,
          low: 96.73,
          close: 98.78),
      ChartSampleData(
          x: DateTime(2024, 07, 18),
          open: 98.7,
          high: 101,
          low: 98.31,
          close: 98.66),
      ChartSampleData(
          x: DateTime(2024, 07, 25),
          open: 98.25,
          high: 104.55,
          low: 96.42,
          close: 104.21),
      ChartSampleData(
          x: DateTime(2024, 08, 01),
          open: 104.41,
          high: 107.65,
          low: 104,
          close: 107.48),
      ChartSampleData(
          x: DateTime(2024, 08, 08),
          open: 107.52,
          high: 108.94,
          low: 107.16,
          close: 108.18),
      ChartSampleData(
          x: DateTime(2024, 08, 15),
          open: 108.14,
          high: 110.23,
          low: 108.08,
          close: 109.36),
      ChartSampleData(
          x: DateTime(2024, 08, 22),
          open: 108.86,
          high: 109.32,
          low: 106.31,
          close: 106.94),
      ChartSampleData(
          x: DateTime(2024, 08, 29),
          open: 106.62,
          high: 108,
          low: 105.5,
          close: 107.73),
      ChartSampleData(
          x: DateTime(2024, 09, 05),
          open: 107.9,
          high: 108.76,
          low: 103.13,
          close: 103.13),
      ChartSampleData(
          x: DateTime(2024, 09, 12),
          open: 102.65,
          high: 116.13,
          low: 102.53,
          close: 114.92),
      ChartSampleData(
          x: DateTime(2024, 09, 19),
          open: 115.19,
          high: 116.18,
          low: 111.55,
          close: 112.71),
      ChartSampleData(
          x: DateTime(2024, 09, 26),
          open: 111.64,
          high: 114.64,
          low: 111.55,
          close: 113.05),
      ChartSampleData(
          x: DateTime(2024, 10, 03),
          open: 112.71,
          high: 114.56,
          low: 112.28,
          close: 114.06),
      ChartSampleData(
          x: DateTime(2024, 10, 10),
          open: 115.02,
          high: 118.69,
          low: 114.72,
          close: 117.63),
      ChartSampleData(
          x: DateTime(2024, 10, 17),
          open: 117.33,
          high: 118.21,
          low: 113.8,
          close: 116.6),
      ChartSampleData(
          x: DateTime(2024, 10, 24),
          open: 117.1,
          high: 118.36,
          low: 113.31,
          close: 113.72),
      ChartSampleData(
          x: DateTime(2024, 10, 31),
          open: 113.65,
          high: 114.23,
          low: 108.11,
          close: 108.84),
      ChartSampleData(
          x: DateTime(2024, 11, 07),
          open: 110.08,
          high: 111.72,
          low: 105.83,
          close: 108.43),
      ChartSampleData(
          x: DateTime(2024, 11, 14),
          open: 107.71,
          high: 110.54,
          low: 104.08,
          close: 110.06),
      ChartSampleData(
          x: DateTime(2024, 11, 21),
          open: 114.12,
          high: 115.42,
          low: 115.42,
          close: 114.12),
      ChartSampleData(
          x: DateTime(2024, 11, 28),
          open: 111.43,
          high: 112.465,
          low: 108.85,
          close: 109.9),
      ChartSampleData(
          x: DateTime(2024, 12, 05),
          open: 110,
          high: 114.7,
          low: 108.25,
          close: 113.95),
      ChartSampleData(
          x: DateTime(2024, 12, 12),
          open: 113.29,
          high: 116.73,
          low: 112.49,
          close: 115.97),
      ChartSampleData(
          x: DateTime(2024, 12, 19),
          open: 115.8,
          high: 117.5,
          low: 115.59,
          close: 116.52),
      ChartSampleData(
          x: DateTime(2024, 12, 26),
          open: 116.52,
          high: 118.0166,
          low: 115.43,
          close: 115.82),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({
    this.x,
    this.open,
    this.close,
    this.low,
    this.high,
  });

  final DateTime? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}
