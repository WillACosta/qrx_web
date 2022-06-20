import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: SizedBox(
                    child: SizedBox(
                      child: Text(
                        'Pay 1/3rd\ncard is here',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam, magni.',
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 5,
                        color: Colors.cyan,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_right_alt_outlined,
                          ),
                          label: const Text('Apply now'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Learn More'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
