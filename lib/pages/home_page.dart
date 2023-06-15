import 'package:flutter/material.dart';
import 'package:learn_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Profile Picture',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/primary.png',
                width: 140,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text('Muhammad Nashir',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              const SizedBox(
                height: 4,
              ),
              Text("Backend Developer",
                  style: TextStyle(color: grayColor, fontSize: 16)),
              const SizedBox(
                height: 70,
              ),
              Wrap(
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset(
                    'assets/images/item-1.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item-2.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item-3.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item-4.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item-5.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item-6.png',
                    width: 80,
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 290,
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            color: whiteColor,
                            child: Column(
                              children: [
                                const Text(
                                  'Update Photo',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'You are only able to change \n the picture profile once',
                                  style:
                                      TextStyle(fontSize: 18, color: grayColor),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  height: 55,
                                  width: 224,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor: whiteColor,
                                          backgroundColor: orangeColor,
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      child: const Text('Continue')),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                  child: const Text('Update Profile'),
                ),
              ),
              const SizedBox(
                height: 170,
              )
            ],
          ),
        ),
      )),
    );
  }
}
