import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linkin_app_ui/screens/signup_screens/sign_up_screen.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset('assets/Logo.svg',
                    height: 35,
                    width: 35,),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Forget Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),),
                      const SizedBox(height: 15,),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Email or Phone*'
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text('We will send you a verification Code,If PPassword did not match '),
                      const SizedBox(height: 20,),


                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: const BorderSide(color: kPrimaryColor)
                                    )
                                )
                            ),
                            child: const Text('Continue',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),) ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
