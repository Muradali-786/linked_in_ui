import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkin_app_ui/screens/signiin_screens/signin_screen.dart';
import 'package:linkin_app_ui/screens/signup_screens/sign_up_screen.dart';
import 'package:linkin_app_ui/widgets/constants.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/11),
                 Center
                  (child: Column(
                  children: [
                    SvgPicture.asset(
                        'assets/Logo.svg',
                          height :80,
                         width:80),
                    const SizedBox(height: 40,),
                    const Text('Join a trusted community of 800M\nProfessionals',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
               ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/5,),
               Padding(padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('By clicking Agree & Join or Continue, you agree to the LinkedIn User Agreement,Privacy Policy, and Cookie Policy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12
                      ),),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
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
                            child: const Text('Agree & Join',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),) ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: (){
                                Navigator.push(
                                   context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: const BorderSide(color:Colors.black)
                                    )
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons-google.svg',
                                  height: 23,
                                  width: 23,),
                                const SizedBox(width: 10,),
                                const Text('Continue With Google',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19
                                ),)
                              ],
                            )
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: (){
                                 Navigator.push(
                                   context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: const BorderSide(color:Colors.black)
                                    )
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/facebook-logo.svg',
                                  height: 23,
                                  width: 23,),
                                const SizedBox(width: 10,),
                                const Text('Continue With Facebook',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19
                                  ),)
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>const SignInScreen()
                    )
                    );
                  },
                  child: const Center(
                    child:  Text(
                      'Sign In',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

    ));
  }
}

