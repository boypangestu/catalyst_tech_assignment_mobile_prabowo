import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:technical_test_prabowo/models/home_menu_model.dart';
import 'package:technical_test_prabowo/models/home_screen_model.dart';

class HomeViewModel with ChangeNotifier {
  final List<HomeMenu> _homeMenuList = [
    HomeMenu(
      title: 'Semua Promo',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'Semua koleksi',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'pria',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'wanita',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'couple',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'aksesoris',
      imagePath: 'assets/onboard1.png',
    ),
    HomeMenu(
      title: 'strap',
      imagePath: 'assets/onboard1.png',
    ),
  ];

  final List<String> images = [
    'https://assets.jamtangan.com/images/banners/home/H1/b/0523/banner-our-store-46f465691a50b32df4912149936103e4.jpg',
    'https://assets.jamtangan.com/images/banners/home/H1/b/0523/dbs-mei-37e70c25f91bb899df853c24fc24328a.jpg',
    'https://assets.jamtangan.com/images/banners/home/H1/b/0623/010-02701-80-171138356d8cc6d83db66b7268952bad.jpg',
  ];

  final List<String> _brands = [
    'https://assets.jamtangan.com/images/brand/casio.png',
    'https://assets.jamtangan.com/images/brand/oris.png',
    'https://assets.jamtangan.com/images/brand/alexandre-christie.png',
    'https://assets.jamtangan.com/images/brand/jonas-verus.png',
    'https://assets.jamtangan.com/images/brand/seiko.png',
    'https://assets.jamtangan.com/images/brand/aigner.png',
    'https://assets.jamtangan.com/images/brand/fossil.png',
    'https://assets.jamtangan.com/images/brand/mido.png',
  ];

  final List _aksesoris = [
    {
      'img': 'https://assets.jamtangan.com/static/184165a928da5a9e2c1b.png',
      'title': 'Aksesoris',
    },
    {
      'img': 'https://assets.jamtangan.com/static/2c13e28ce09d3053e030.png',
      'title': 'Strap',
    },
    {
      'img': 'https://assets.jamtangan.com/static/d447cecd7b92ad042e64.png',
      'title': 'Watch Winder',
    },
    {
      'img': 'https://assets.jamtangan.com/static/0da0ae8104284206e6ba.png',
      'title': 'Watch Box',
    },
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final ScrollController _homeController = ScrollController();
  int _selectedIndex = 0;

  int get currentSlider => _current;
  CarouselController get carouselController => _controller;

  int get selectedIndex => _selectedIndex;
  List<HomeMenu> get homeMenuList => _homeMenuList;
  List<String> get imgCarousel => images;
  List<String> get imgBrands => _brands;
  List get aksesoris => _aksesoris;

  void onItemTapped(int index, BuildContext context) {
    if (_selectedIndex == index && index == 0) {
      // Scroll to top only when the home tab is selected.
      _homeController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } else {
      // Navigate to the respective screen based on the selected tab.
      switch (index) {
        case 1:
          Navigator.of(context).pushNamed('/list');
          break;
        case 2:
          Navigator.of(context).pushNamed('/signin');
          break;
        case 3:
          // Navigator.of(context).pushNamed('/signin');
          break;
      }
    }

    _selectedIndex = index;
    notifyListeners();
  }
}
