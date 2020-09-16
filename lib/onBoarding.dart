import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/login.dart';
import 'package:medical/slider.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    // _currentPage = 0;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = [
      SliderPage(
        Padding(
          padding: const EdgeInsets.only(
            top: 58,
            bottom: 54,
            right: 34,
            left: 59,
          ),
          child: Container(
            child: Image.asset('assets/images/doctor.png'),
          ),
        ),
        'أبحث عن طبيب',
        'احصل على قائمة من افضل الدكاترة القريبين منك',
      ),
      SliderPage(
        Padding(
          padding: const EdgeInsets.only(
            top: 88,
            bottom: 50,
          ),
          child: Container(
            child: Image.asset('assets/images/health.png'),
          ),
        ),
        'احجز موعد',
        'احصل على موعد مع الدكتورالمناسب لحالتك الصحية',
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFE7F3FF),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(
                () {
                  _currentPage = index;
                },
              );
            },
            children: list,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0xFF3F72AF),
                onPressed: () {
                  if (_currentPage == 0) {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  } else {
                    Navigator.of(context).pushReplacementNamed(Login.routeName);
                  }
                },
                child: Text(
                  'التالي',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  2,
                  (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 6,
                      width: (index == _currentPage) ? 6 : 18,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Color(0xFFB9B8B8)
                            : Color(0xFF3F72AF),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
