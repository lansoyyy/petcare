import 'package:flutter/material.dart';
import 'package:petcare/widgets/text_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          height: 400,
          width: 450,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextBold(
                  text: 'Contact',
                  fontSize: 24,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                  text: 'Email: ',
                  fontSize: 18,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                  text: 'Contact Number: ',
                  fontSize: 18,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                  text: 'Location: ',
                  fontSize: 18,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                  text: 'Daily Schedule: ',
                  fontSize: 18,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextRegular(
                  text: 'Maxium Daily Appointments: ',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          height: 500,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextBold(
                  text: 'About',
                  fontSize: 24,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
