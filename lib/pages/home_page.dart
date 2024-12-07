import 'package:coin_pay/components/my_bottom_navigation.dart';
import 'package:coin_pay/pages/profile_page.dart';
import 'package:coin_pay/pages/spending_page.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      bottomNavigationBar: const MyBottomNavigation(),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              //blue container
              Container(
                  height: 300,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //search bar
                            const Icon(
                              FontAwesome.trophy_solid,
                              color: Colors.white,
                              size: 18,
                            ),
                            Container(
                              height: 35,
                              width: 270,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.shade400,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search_outlined),
                                  hintText: 'Search "Payment"',

                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesome.flag_usa_solid,
                              size: 15,
                              color: Colors.white,
                            ),
                            Text(
                              "US Dollar",
                              style: TextStyle(color: Colors.white54),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      const Text(
                        "20,000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const Text(
                        "Available Balance",
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // add money button
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Add Money",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(height: 45,),
              // Transaction area
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          Icon(Icons.arrow_forward_rounded)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            //Transaction area
                            ListTile(
                              leading:
                                  const CircleAvatar(child: Icon(Icons.money)),
                              title: const Text(
                                "Spending",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "-400",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SpendingPage(),)),
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              indent: 25,
                              endIndent: 25,
                            ),
                            ListTile(
                              leading: const CircleAvatar(
                                  child: Icon(FontAwesome.file)),
                              title: const Text(
                                "Income",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "+3000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(),)),
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              indent: 25,
                              endIndent: 25,
                            ),
                            const ListTile(
                              leading:
                                  CircleAvatar(child: Icon(Icons.money)),
                              title: Text(
                                "Bill",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "-400",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 265,
            left: 17,
            child: Container(
              height: 75,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [ const Icon(
                            Icons.monetization_on_rounded,
                            size: 34,
                            color: Colors.blue ,),
                            Positioned(
                              left: 22,
                                bottom: 20,
                                child: Container(
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(50)
                                 ),
                                    child: Icon(Icons.arrow_upward_rounded,
                                      size: 15,
                                    )))
                        ]),
                        Text("Send")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Column(
                      children: [
                        Stack(
                            children: [ Icon(
                              Icons.monetization_on_rounded,
                              size: 34,
                              color: Colors.yellowAccent,),
                              Positioned(
                                  left: 22,
                                  bottom: 20,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Icon(Icons.arrow_downward_rounded,
                                        size: 15,
                                      )))
                            ]),
                        Text("Request")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Column(
                      children: [
                        Stack(
                            children: [ Icon(Icons.home,
                              size: 34,
                              color: Colors.yellowAccent ,),
                            ]),
                        Text("Bank")
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
