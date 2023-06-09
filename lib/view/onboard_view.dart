import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_test_prabowo/models/onboardingStep.dart';
import 'package:technical_test_prabowo/style.dart';
import 'package:technical_test_prabowo/view_models/onboarding_view_model.dart';

class OnboardingScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OnboardingViewModel>(context);

    viewModel.onboardingCompleted = () {
      // Navigate to the home screen
      Navigator.of(context).pushReplacementNamed('/home');
    };

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_splash.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: viewModel.pageController,
                itemCount: viewModel.steps.length,
                onPageChanged: (int page) {
                  viewModel.setPage(page);
                },
                itemBuilder: (BuildContext context, int index) {
                  return OnboardingStepWidget(step: viewModel.steps[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: viewModel.previousPage,
                    child: Text('Previous'),
                  ),
                  Text(
                      'Step ${viewModel.currentPage + 1} of ${viewModel.steps.length}'),
                  TextButton(
                    onPressed: viewModel.nextPage,
                    child: viewModel.currentPage == viewModel.steps.length - 1
                        ? Text('Finish')
                        : Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingStepWidget extends StatelessWidget {
  final OnboardingStep step;

  const OnboardingStepWidget({required this.step});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          step.imagePath,
          width: 200,
          height: 200,
        ),
        SizedBox(height: 24),
        // Text(
        //   step.title,
        //   style: TextStyle(
        //     fontSize: 24,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // SizedBox(height: 12),
        Text(
          step.description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: colorWhite),
        ),
      ],
    );
  }
}
