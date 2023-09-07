import 'package:flutter/material.dart';
import 'package:petcare/widgets/text_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 75, right: 75),
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextBold(
                        text: 'Welcome Text',
                        fontSize: 32,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextRegular(
                        text:
                            'Tempor ea irure reprehenderit proident aliqua voluptate quis ea nulla. Fugiat nostrud ea pariatur occaecat dolore enim Lorem exercitation pariatur. Commodo mollit exercitation ullamco enim irure commodo. Ex laborum veniam aute ut cupidatat eu sunt adipisicing. Eiusmod ea magna commodo Lorem ut eu amet nulla proident laboris mollit ut. Deserunt cupidatat nostrud fugiat officia reprehenderit consectetur eiusmod amet do magna commodo aliquip sunt consequat. Irure aliquip laboris ad velit veniam voluptate ea anim id. Enim commodo et in exercitation. Proident elit in mollit deserunt est do dolore Lorem pariatur sint pariatur ad. Amet ea qui et consequat proident aute labore eiusmod aliquip. Anim excepteur ad est deserunt dolor enim Lorem et consequat aliquip pariatur. Mollit excepteur exercitation irure anim sint reprehenderit tempor. Pariatur eiusmod pariatur ex enim fugiat.',
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
