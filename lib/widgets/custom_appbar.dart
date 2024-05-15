import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatefulWidget {
  final SizingInformation? sizingInformation;

  const CustomAppBar({Key? key, this.sizingInformation}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CustomAppBarState();
  }
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    var sizingInformation = widget.sizingInformation;
    return Container(
      color: Colors.white,
      height: sizingInformation!.screenSize.height * 0.08,
      padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/profile1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: sizingInformation.screenSize.width / 1.40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xFFEF3F7)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF666666),
                  )),
            ),
          ),
          const Icon(
            FontAwesomeIcons.solidCommentDots,
            color: Color(0xFF666666),
            size: 25,
          ),
        ],
      ),
    );
  }
}
