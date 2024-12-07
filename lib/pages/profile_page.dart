import 'package:coin_pay/components/my_bottom_navigation.dart';
import 'package:coin_pay/pages/personal_info_page.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/ubaid.jpg"),
                                  radius: 30,
                                ),
                                Positioned(
                                  left: 15,
                                    top: 15,
                                    child: Icon(Icons.camera_alt_outlined, size: 30,)),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Ubaid Ullah" , style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            Text("ubaidullah.dev09@gmail.com"),
                            Text("+923184445488")
                          ],
                        ),
                      ),
                      Positioned(
                        right: 15,
                        child: Icon(
                            Icons.edit),
                      ),
                    ],
                  ),
                ),
                
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          child: Icon(FontAwesome.lightbulb_solid),
                        ),
                        title: const Text("Dark Mood", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: Switch(value: false, onChanged: (value) {
        
                        },),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.person, color: Colors.blue,),
                        ),
                        title: const Text("Personal info", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const PersonalInfoPage(),)),
                            child: const Icon(Icons.arrow_forward_ios_rounded)),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(Icons.home_outlined, color: Colors.deepOrange,),
                        ),
                        title: Text("Bank & Cards", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          child: Icon(FontAwesome.link_solid, color: Colors.deepOrange,),
                        ),
                        title: Text("Transactions", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.settings, color: Colors.blue,),
                        ),
                        title: Text("Settings", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 30,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
