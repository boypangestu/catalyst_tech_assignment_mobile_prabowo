import 'package:flutter/material.dart';
import 'package:technical_test_prabowo/models/onboardingStep.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  VoidCallback? onboardingCompleted;

  final List<OnboardingStep> _steps = [
    OnboardingStep(
      title: 'Step 1',
      description:
          '100% produk yang kami jual adalah barang original dengan garansi resmi, bukan barang palsu maupun replika.',
      imagePath: 'assets/onboard1.png',
    ),
    OnboardingStep(
      title: 'Step 2',
      description:
          'Kami menjamin setiap produk yang kami jual online lebih murah dibanding yang dijual di toko offline.',
      imagePath: 'assets/onboard2.png',
    ),
    OnboardingStep(
      title: 'Step 3',
      description:
          'Dengan menggunakan kurir terpercaya, kami menjamin barang yang dipesan akan tiba sesuai alamat.',
      imagePath: 'assets/onboard3.png',
    ),
  ];

  PageController get pageController => _pageController;
  int get currentPage => _currentPage;
  List<OnboardingStep> get steps => _steps;

  void nextPage() {
    if (_currentPage < _steps.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Perform any action after the last onboarding step
      // For example, navigate to the home screen
      onboardingCompleted?.call();

      // Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  void previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
