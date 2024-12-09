import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Support"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 250,
                    width: 250,
                    child: const Image(
                      fit: BoxFit.cover,
                        image: AssetImage("assets/images/pic5.jpg"))),
              ),
              const Text("CoinPay Support", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              const SizedBox(height: 10,),
              const Text("Our dedicated team is here to assist you with any"
                  " questions or issues related to our CoinPay mobile App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                    fontWeight: FontWeight.w300
                ),
              ),
              const SizedBox(height: 10,),
              //blue button
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.messenger_outline_outlined, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Start Message", style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blueAccent, width: 2)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.question_mark_outlined, color: Colors.blueAccent,),
                    SizedBox(width: 10,),
                    Text("View FAQ", style:TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
