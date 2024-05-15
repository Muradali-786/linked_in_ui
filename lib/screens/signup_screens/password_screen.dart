import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
import 'package:linkin_app_ui/widgets/main_page.dart';
class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool remember =false;
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
                        const Text('Set your password',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(height: 50,),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email or Phone*',
                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: 'Password*',
                          ),
                        ),
                        const SizedBox(height: 20,),
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
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context)=> const MainPage()));
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
