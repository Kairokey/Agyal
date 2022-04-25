part of '../onboarding_screen.dart';

getPages(text , image, context) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Image.asset(image),
          ),
          const Spacer(),
          Expanded(
            flex: 3,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Tajawal',
                  fontSize: SetResponsive.get(
                      context: context,
                      mobile: 14.sp,
                      tablet: 13.sp
                  ),
                  fontWeight: FontWeight.w700,
                  color: blueBerry,
              )
            )
          )
        ]
      )
  );
}