

class UnBoardingModel {
  final String image;
  final String description;

  UnBoardingModel({required this.image, required this.description});

  List<UnBoardingModel> content = [
    UnBoardingModel(
      image: "assets/images/coin1.png",
      description: "OnBoarding description one",
    ),
    UnBoardingModel(
        image: "assets/images/coin2.png",
        description: "On Boarding description two"),
    UnBoardingModel(
        image: "assets/images/coin3.png",
        description: "On Boarding Screen description three"),
  ];
}
