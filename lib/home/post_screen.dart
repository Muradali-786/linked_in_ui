import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
import 'package:linkin_app_ui/widgets/main_page.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
          child: const Icon(
            Icons.close,
            size: 30,
            color: Colors.black, // Add a color to the icon
          ),
        ),
        leadingWidth: 45,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/profile6.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10,),
            const Text('Anyone',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF666666)
            ),),
            const Padding(
                padding: EdgeInsets.only(bottom:5,left: 5),
              child: Icon(FontAwesomeIcons.caretDown,
              size: 17,
                  color: Color(0xFF666666)),
            )
          ],
        ),
        actions:[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.clock,color: Color(0xFF666666),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kPrimaryColor
                  ),
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What do you want to talk about?'
                ),
                scrollPadding: EdgeInsets.all(20),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              ),)
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 60,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.image,
            color: Color(0xFF666666),),
            SizedBox(width: 5,),
            Icon(Icons.add,
              color: Color(0xFF666666),),
          ],
        )
        ,
      ),
    );
  }
}
