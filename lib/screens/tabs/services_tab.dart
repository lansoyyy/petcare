import 'package:flutter/material.dart';
import 'package:petcare/widgets/text_widget.dart';

class ServicesTab extends StatelessWidget {
  const ServicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextBold(
              text: 'Our Services',
              fontSize: 32,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBold(
                        text: 'Categories',
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        height: 500,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                width: 225,
                                height: 75,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.check_circle_outline,
                                        size: 38,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      TextBold(
                                        text: 'Sample',
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 350,
                        height: 500,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                width: 350,
                                height: 125,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextBold(
                                            text: 'Sample',
                                            fontSize: 28,
                                            color: Colors.black,
                                          ),
                                          TextRegular(
                                            text: '(Sample)',
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      const Icon(
                                        Icons.add,
                                        size: 42,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
