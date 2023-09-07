import 'package:flutter/material.dart';
import 'package:petcare/screens/tabs/home_tab.dart';
import 'package:petcare/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 40, 50, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBold(
                text: 'PetCare: Rayna Animal Care Clinic',
                fontSize: 32,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: const TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontFamily: 'QBold', fontSize: 18),
                    tabs: [
                      Tab(
                        text: 'Home',
                      ),
                      Tab(
                        text: 'Appointment',
                      ),
                      Tab(
                        text: 'Our Service',
                      ),
                      Tab(
                        text: 'About Us',
                      ),
                      Tab(
                        text: 'Contact Us',
                      ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    HomeTab(),
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
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
