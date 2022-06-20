import 'package:flutter/material.dart';
import 'package:qrx_web/shared/components/button_component.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1024,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.qr_code_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'QRx',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  ButtonComponent(label: 'Start Now', onPressed: () {}),
                ],
              ),
              const SizedBox(height: 80),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Generate everything you need to start your business',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Generate an QR code from any text, URL, or phone number',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            ButtonComponent(
                              label: 'Get Beta access',
                              onPressed: () {},
                            ),
                            const SizedBox(width: 15),
                            ButtonComponent(
                              label: 'Learn More',
                              type: ButtonType.secondary,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Flexible(
                    child: Text('It\'s fast, easy, and secure.'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
