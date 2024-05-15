import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linkin_app_ui/screens/signiin_screens/forget_password.dart';
import 'package:linkin_app_ui/screens/signup_screens/sign_up_screen.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
import 'package:linkin_app_ui/widgets/main_page.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SafeArea(
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
                          const Text('Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              const Text('Or',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: InkWell(
                                  onTap: (){},
                                  child: const Text('Join LinkedIn',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold

                                      )),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15,),
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
                                    const Text('Sign in With Google',
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
                                    SvgPicture.asset('assets/apple-logo.svg',
                                      height: 23,
                                      width: 23,),
                                    const SizedBox(width: 10,),
                                    const Text('Sign in With Apple',
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
                                    const Text('Sign in With Facebook',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19
                                      ),)
                                  ],
                                )
                            ),
                          ),
                          const SizedBox(height: 15,),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Email or Phone*'
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Password*',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  value: remember,
                                  activeColor:Colors.green[900],
                                  onChanged: (value){
                                    setState(() {
                                      remember =value!;
                                    });
                                  }),
                              Text('Remember me',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[800]
                                ),),
                              const SizedBox(width: 10,),
                              const Text('Learn more',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,MaterialPageRoute(
                                  builder: (context)=>const ForgotScreen()));
                            },
                            child: const Text('Forget Password',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),),
                          ),
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
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context, MaterialPageRoute(
                                        builder: (context)=> const MainPage()));
                                  },
                                  child: const Text('Continue',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),),
                                ) ),
                          ),



                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
