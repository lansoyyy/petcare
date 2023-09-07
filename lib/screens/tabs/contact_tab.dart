import 'package:flutter/material.dart';
import 'package:petcare/widgets/button_widget.dart';
import 'package:petcare/widgets/text_widget.dart';
import 'package:petcare/widgets/textfield_widget.dart';

class ContactTab extends StatefulWidget {
  const ContactTab({super.key});

  @override
  State<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  final nameController = TextEditingController();
  final contactnumberController = TextEditingController();
  final emailController = TextEditingController();
  final msgController = TextEditingController();
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
          width: 450,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFieldWidget(
                  label: 'Full Name',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  label: 'Contact Number',
                  controller: contactnumberController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  label: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  label: 'Message',
                  height: 100,
                  maxLine: 3,
                  controller: msgController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ButtonWidget(
                    fontColor: Colors.white,
                    color: Colors.black,
                    label: 'Send Message',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
