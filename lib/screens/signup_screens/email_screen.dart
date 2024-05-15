import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkin_app_ui/screens/signup_screens/password_screen.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      'assets/Logo.svg',
                      height: 35,
                      width: 35,),
                  ),
                  const SizedBox(height: 40,),
                  Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Add your email or phone',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(height: 50,),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Email or Phone*'
                          ),
                        ),
                        const SizedBox(height: 40,),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                              onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) =>  const PasswordScreen()
                              )
                              );
                              },
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
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
