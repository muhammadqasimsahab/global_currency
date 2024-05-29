import '../utils/app_urls.dart';

Widget socialButton({required var image,required String buttonText}) {
  return Container(
    height: 56.h,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: greyColor)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, scale: 4),
         SizedBox(width: 20.w),
         Text(buttonText,style: const TextStyle(color: greyColor),),
      ],
    ),
  );
}
