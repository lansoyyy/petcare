import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:petcare/widgets/button_widget.dart';
import 'package:petcare/widgets/text_widget.dart';
import 'package:petcare/widgets/textfield_widget.dart';

class AppointmentTab extends StatefulWidget {
  const AppointmentTab({super.key});

  @override
  State<AppointmentTab> createState() => _AppointmentTabState();
}

class _AppointmentTabState extends State<AppointmentTab> {
  @override
  Widget build(BuildContext context) {
    return MonthView(
      onCellTap: (events, date) {
        setAppointmentDialog(context);
      },
      headerStyle: const HeaderStyle(
        headerTextStyle: TextStyle(
          fontFamily: 'Bold',
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
      ),
      cellAspectRatio: 1,
    );
  }

  final namectlr = TextEditingController();

  final contactnumberctlr = TextEditingController();

  final emailctlr = TextEditingController();

  final addressctlr = TextEditingController();
  final breedctlr = TextEditingController();
  final agectlr = TextEditingController();

  List pets = ['Dog', 'Cat'];
  String pet = 'Dog';

  List services = ['Vaccination', 'Anti Rabies'];
  String service = 'Vaccination';

  int dropvalue = 0;
  int dropvalue1 = 0;

  setAppointmentDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            width: 650,
            height: 510,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: TextBold(
                    text: 'Set an Appointment',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextRegular(
                          text: 'Appointment Schedule',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextBold(
                          text: 'January 01, 2001',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextRegular(
                                  text: 'Owner Information',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Name',
                                    controller: namectlr),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Contact Number',
                                    controller: contactnumberctlr),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Email',
                                    controller: emailctlr),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Address',
                                    controller: addressctlr),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextRegular(
                                  text: 'Pet Information',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextBold(
                                  text: 'Pet Type',
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0),
                                    child: SizedBox(
                                      height: 40,
                                      width: 275,
                                      child: DropdownButton(
                                        underline: const SizedBox(),
                                        value: dropvalue,
                                        items: [
                                          for (int i = 0; i < pets.length; i++)
                                            DropdownMenuItem(
                                              onTap: () {
                                                setState(() {
                                                  pet = pets[i];
                                                });
                                              },
                                              value: i,
                                              child: TextRegular(
                                                text: pets[i],
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            dropvalue =
                                                int.parse(value.toString());
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Breed',
                                    controller: breedctlr),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                    width: 275,
                                    label: 'Age',
                                    controller: agectlr),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextBold(
                                  text: 'Service',
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0),
                                    child: SizedBox(
                                      height: 40,
                                      width: 275,
                                      child: DropdownButton(
                                        underline: const SizedBox(),
                                        value: dropvalue1,
                                        items: [
                                          for (int i = 0;
                                              i < services.length;
                                              i++)
                                            DropdownMenuItem(
                                              onTap: () {
                                                setState(() {
                                                  service = services[i];
                                                });
                                              },
                                              value: i,
                                              child: TextRegular(
                                                text: services[i],
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            dropvalue1 =
                                                int.parse(value.toString());
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                fontSize: 12,
                                width: 75,
                                height: 40,
                                fontColor: Colors.white,
                                color: Colors.black,
                                label: 'Save',
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ButtonWidget(
                                fontSize: 12,
                                width: 75,
                                height: 40,
                                fontColor: Colors.white,
                                color: Colors.black,
                                label: 'Cancel',
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
