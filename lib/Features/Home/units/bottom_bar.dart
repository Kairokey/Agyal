part of '../home.dart';
class _BottomBar extends StatefulWidget {
  const _BottomBar({Key? key}) : super(key: key);

  @override
  __BottomBarState createState() => __BottomBarState();
}

class __BottomBarState extends State<_BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        print("=========================Pressed==========================");
        HomeCubit.get(context).changeBottom(value);
        HomeCubit.get(context).currentIndex = value;
      },
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: HomeCubit.get(context).currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        getBottomNavigationBar(UserImage.home  , 0 , context),
        getBottomNavigationBar(UserImage.chat  , 1 , context),
        getBottomNavigationBar(UserImage.video , 2 , context),
        getBottomNavigationBar(UserImage.book  , 3 , context),
        getBottomNavigationBar(UserImage.more  , 4 , context),
      ],
    );
  }
}
