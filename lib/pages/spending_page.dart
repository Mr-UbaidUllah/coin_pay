import 'package:coin_pay/components/my_bar_graph.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SpendingPage extends StatelessWidget {
  const SpendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Spending"),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purpleAccent),
                child: const Row(
                  children: [
                    Text("January"),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Spend",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text("\$500.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 75,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.wallet_outlined,
                              size: 15,
                              color: Colors.black26,
                            ),
                            Text(
                              "Available Balance ",
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        Text("\$20,000.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ],
              ),

              // bar Graph
              Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: const Border(
                          bottom: BorderSide(color: Colors.blue, width: 4))),
                  height: 200,
                  child: const MyBarChart()),
              Container(
                margin: const EdgeInsets.all(15),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.landscape,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const Text(
                            "Spending",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.padding_outlined,
                              size: 30,
                              color: Colors.lightGreen,
                            ),
                          ),
                          const Text(
                            "Income",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange.shade200,
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.payment,
                              size: 30,
                              color: Colors.deepOrange,
                            ),
                          ),
                          const Text(
                            "Bills",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange.shade200,
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.savings,
                              size: 30,
                              color: Colors.deepOrange,
                            ),
                          ),
                          const Text(
                            "Savings",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Spending List", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Icon(Icons.list)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(FontAwesome.circle_play),
                      ),
                      trailing: Text("-\$15.99", style: TextStyle(
                          color: Colors.red),),
                      title: Text("NetFlex", style: TextStyle(
                          fontWeight: FontWeight.bold)),
                      subtitle: Text("1st Jan at 11:00 PM "),

                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(FontAwesome.google_brand),
                      ),
                      trailing: Text("-\$100.00", style: TextStyle(
                          color: Colors.red),),
                      title: Text("Google", style: TextStyle(
                          fontWeight: FontWeight.bold)),
                      subtitle: Text("1st Jan at 11:00 PM "),

                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(FontAwesome.youtube_brand),
                      ),
                      trailing: Text("-\$200.99", style: TextStyle(
                          color: Colors.red),),
                      title: Text("YouTube", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      subtitle: Text("1st Jan at 11:00 PM "),

                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(FontAwesome.facebook_brand),
                      ),
                      trailing: Text("-\$15.99", style: TextStyle(
                          color: Colors.red),),
                      title: Text("FaceBook", style: TextStyle(
                          fontWeight: FontWeight.bold)),
                      subtitle: Text("1st Jan at 11:00 PM "),

                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
