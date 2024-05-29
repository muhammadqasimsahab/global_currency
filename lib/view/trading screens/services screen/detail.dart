import '../../../theme/text_themes.dart';
import '../../../utils/app_urls.dart';

class DetailScreen extends StatefulWidget {


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title:  Text('Detail', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image3.png'),
              SizedBox(height: 20.h),
              Text('Legal Excellence, Your Trusted Advocates: Legal Solutions',style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: 25.h),
              Text('Overview',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,  color: TTextTheme.getTextColor(context))),
              SizedBox(height: 15.h),
              Text("we are dedicated to providing unparalleled legal services tailored to meet the unique needs of each client. With our team of experienced attorneys, we offer comprehensive legal solutions designed to protect your rights, interests, and assets.Our approach is rooted in a commitment to excellence, integrity, and personalized attention. Whether you're facing a complex legal dispute, navigating a business transaction, or seeking guidance on estate planning matters, we are here to serve as your trusted advocates every step of the way.",
                  style:TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,  color: TTextTheme.getTextColor(context),))
             ,
              SizedBox(height: 14.h),
              Text('Contact Details',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,  color: TTextTheme.getTextColor(context))),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ],
                      ),
                    ),
                    child: Icon(Icons.phone, color: Colors.white),
                  ),
                  SizedBox(width: 10.w),
                  Text(' +123-456-7890',style: Theme.of(context).textTheme.titleMedium)
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff5FB1FF),
                          Color(0xffFE60F7),
                        ],
                      ),
                    ),
                    child: Icon(Icons.email_outlined, color: Colors.white),
                  ),
                  SizedBox(width: 10.w),
                  Text('john.smith@example.com',style: Theme.of(context).textTheme.titleMedium),

                ],
              ),
              SizedBox(height: 30.h)
            ],
          ),
        ),
      ),
    );
  }
}
