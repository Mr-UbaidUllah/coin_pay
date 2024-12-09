import 'package:coin_pay/components/my_bottom_navigation.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List unBoardingData = [
    (
      image: "assets/images/coin1.png",
      description: "On Boarding Screen description one",
    ),
    (
      image: "assets/images/coin2.png",
      description: "On Boarding Screen description two"
    ),
    (
      image: "assets/images/coin3.png",
      description: "On Boarding Screen description three"
    ),
  ];
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: unBoardingData.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 25, right: 25,),
                    child: Column(
                      children: [
                        Image(
                            image: AssetImage(
                          unBoardingData[index].image,
                        )),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(unBoardingData.length,
                                    (index) => buildDot(index, context)),
                          ),
                          ),
                        const SizedBox(height: 15,),
                        Text(
                          textAlign: TextAlign.center,
                          unBoardingData[index].description,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15)),
                            width: double.infinity,
                            height: 50,
                            child: Center(
                              child: Text(
                                currentIndex == unBoardingData.length -1
                                    ? "Continue"
                                    : "Next",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          onTap: () {
                            if (currentIndex == unBoardingData.length - 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyBottomNavigation(),
                                  ));
                            }
                            controller.nextPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.easeIn);
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 11 : 30,
      margin: const EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.blueAccent : Colors.grey,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
