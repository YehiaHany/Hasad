import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

List<BottomNavigationBarItem> navBarItems = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      AppImages.home,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
    ),
    activeIcon: SvgPicture.asset(
      AppImages.home,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
      colorFilter: const ColorFilter.mode(
          Color.fromARGB(255, 118, 227, 194), BlendMode.srcIn),
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      AppImages.favorite,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
    ),
    activeIcon: SvgPicture.asset(
      AppImages.favorite,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
      colorFilter: const ColorFilter.mode(
          Color.fromARGB(255, 118, 227, 194), BlendMode.srcIn),
    ),
    label: "Favorite",
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      AppImages.cart,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
    ),
    activeIcon: SvgPicture.asset(
      AppImages.cart,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
      colorFilter: const ColorFilter.mode(
          Color.fromARGB(255, 118, 227, 194), BlendMode.srcIn),
    ),
    label: "Cart",
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      AppImages.profile,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
    ),
    activeIcon: SvgPicture.asset(
      AppImages.profile,
      width: 24, // Adjust the width as needed
      height: 24, // Adjust the height as needed
      colorFilter: const ColorFilter.mode(
          Color.fromARGB(255, 118, 227, 194), BlendMode.srcIn),
    ),
    label: "Profile",
  ),
];
