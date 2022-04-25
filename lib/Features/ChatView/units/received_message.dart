part of '../chat_view.dart';

class ReceivedMessage extends StatelessWidget {
  final String message ;
  final int date ;
  const ReceivedMessage({Key? key , required this.message , required this.date}) : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150,
            maxWidth: MediaQuery.of(context).size.width -50,
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 15 ,
                vertical: 5
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10.sp),
                topLeft: Radius.circular(10.sp),
                topRight: Radius.circular(10.sp),
                bottomLeft: Radius.circular(0.sp),
              ),
            ),
            color: blueBerry,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 70,
                      right: 10,
                      top: 10,
                      bottom: 22
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontFamily: UserFont.Tajawal,
                      fontSize: 13.sp,
                      color: white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  left: 10,
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          getDate(date),
                          style: TextStyle(
                              fontFamily: UserFont.Tajawal,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
  getDate(int date){
    if(date > 12){
      if((date % 12) > 9 ){
        return "${date % 12 }:00 PM";
      }
      else{
        return "0${date % 12 }:00 PM";
      }
    }
    else {
      return "$date : 00 AM";
    }
  }
}
