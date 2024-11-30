import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:demo_project/constants/text_font_style.dart';
import 'package:demo_project/gen/colors.gen.dart';
import 'package:demo_project/helpers/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/gen/assets.gen.dart';
import 'features/home/presentation/home_screen.dart';
import 'features/profile/presentation/profile_screen.dart';

final class NavigationScreen extends StatefulWidget {
  final Widget? pageNum;
  const NavigationScreen({
    super.key,
    this.pageNum,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  int colorIndex = 0;

  final bool _isFisrtBuild = true;
  bool navigationOn = true;

  final List<StatefulWidget> _screens = [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object? args;
    StatefulWidget? screenPage;
    if (_isFisrtBuild) {
      args = ModalRoute.of(context)!.settings.arguments;
    }
    if (args != null) {
      colorIndex = 5;
      screenPage = args as StatefulWidget;
      var newColorindex = -1;

      for (var element in _screens) {
        newColorindex++;
        if (element.toString() == screenPage.toString()) {
          colorIndex = newColorindex;
          _currentIndex = newColorindex;
          break;
        }
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        onDrawerChanged: (isOpened) => setState(() {
          navigationOn = !isOpened;
        }),
        key: _scaffoldKey,
        appBar: _currentIndex == 0
            ? AppBar(
                leading: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(Icons.menu)),
                title: Text(
                  'MyCo',
                  style: TextFontStyle.textStyle14w400c000000,
                ),
                centerTitle: true,
              )
            : AppBar(
                leading: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(Icons.menu)),
                title: Text(
                  'My Contacts',
                  style: TextFontStyle.textStyle14w400c000000,
                ),
                centerTitle: true,
              ),
        body: Center(
            child: (screenPage != null)
                ? screenPage
                : _screens.elementAt(_currentIndex)),
        bottomNavigationBar: CustomNavigationBar(
          iconSize: 24.r,
          selectedColor: Colors.red,
          strokeColor: AppColors.cFFFFFF,
          unSelectedColor: Colors.black,
          backgroundColor: AppColors.scaffoldColor,
          items: [
            CustomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.hInstagram.path,
                color: (_currentIndex == 0)
                    ? AppColors.cFFFFFF
                    : AppColors.cA0A0A0,
              ),
              title: Text(
                "${"Home"} ",
                style: TextFontStyle.textStyle14w400c000000.copyWith(
                  color: (_currentIndex == 0)
                      ? AppColors.cFFFFFF
                      : AppColors.cA0A0A0,
                ),
              ),
            ),
            CustomNavigationBarItem(
              icon: Image.asset(
                Assets.icons.closeIcon.path,
                color: (_currentIndex == 1)
                    ? AppColors.cFFFFFF
                    : AppColors.cA0A0A0,
              ),
              title: Text(
                "Profile",
                style: TextFontStyle.textStyle14w400c000000.copyWith(
                  color: (_currentIndex == 1)
                      ? AppColors.cFFFFFF
                      : AppColors.cA0A0A0,
                ),
              ),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            // if (appData.read(kKeyIsLoggedIn) || index == 1 || index == 0) {
            //   if (index == 1) {
            //     context.read<SelectedSubCat>().selectedSubCatIDClear();
            //   }

            setState(() {
              _currentIndex = index;
            });
            // } else {
            //   ToastUtil.showLongToast("You need to log in first");
            // }
          },
        ),
      ),
    );
  }
}
