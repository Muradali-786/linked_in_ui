import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linkin_app_ui/data/data.dart';
import 'package:linkin_app_ui/widgets/constants.dart';
import 'package:linkin_app_ui/widgets/custom_appbar.dart';
import 'package:linkin_app_ui/widgets/custom_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _post = Data.postList;
  bool _showAppNavbar = true;
  late ScrollController _scrollController;
  bool _isScrollDown = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();
  }

  void _initialScroll() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!_isScrollDown) {
          _isScrollDown = true;
          _hideAppNavBar();
        }
      }
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (_isScrollDown) {
          _isScrollDown = false;
          _showAppNavBar();
          setState(() {});
        }
      }
    });
  }

  void _hideAppNavBar() {
    setState(() {
      _showAppNavbar = false;
    });
  }

  void _showAppNavBar() {
    setState(() {
      _showAppNavbar = true;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          color: Colors.black12,
          child: Column(
            children: [
              _showAppNavbar
                  ? CustomAppBar(sizingInformation: sizingInformation)
                  : const SizedBox.shrink(),
              _listPostWidget(sizingInformation),
            ],
          ),
        );
      },
    );
  }

  Widget _listPostWidget(SizingInformation sizingInformation) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _post.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: const EdgeInsets.only(bottom: 0, top: 8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                        color: Colors.black54,
                        width: 0.50,
                      ),
                      bottom: BorderSide(color: Colors.black54, width: 0.50))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(_post[index].profileUrl!),
                            )
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_post[index].name!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Container(
                            width: sizingInformation.screenSize.width/1.34,
                            child: Text(_post[index].headline!,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                              color: Colors.black54
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(_post[index].description!,
                  style: const TextStyle(
                    fontSize: 14
                  ),),
                  const SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(_post[index].tags!,
                    style: const TextStyle(
                    color: kPrimaryColor
                    )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: sizingInformation.screenSize.width,
                    child: Image.asset(
                      _post[index].image!,
                    fit: BoxFit.cover,),
                  ),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset('assets/icons/like_icon.png'),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset('assets/icons/celebrate_icon.png'),
                            ),
                            if(index == 0|| index == 4)
                              Container(
                                height: 25,
                                width: 25,
                                child: Image.asset('assets/icons/love_icon.png'),
                              ),
                            const SizedBox(width: 5,),
                            Text(_post[index].likes!,
                              style: const TextStyle(fontSize: 14),)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(_post[index].comments!),
                            const SizedBox(width: 2,),
                            const Text('comments')
                          ],
                        ),
                      )
                    ],
                  ),
                 const Divider(
                    thickness: 0.50,
                    color: Colors.black26,
                  ),
                  _rowButton(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
  Widget _rowButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: columnSingleButton(
              name: 'Likes',
              iconImage:'assets/icons/like_icon_white.png',
              color: const Color(0xFF666666),
            ),
          ),
          InkWell(
            onTap: () {},
            child: columnSingleButton(
              name: 'Comments',
              iconImage: 'assets/icons/comment-bubble-icon.png', // Corrected image asset path
              color: const Color(0xFF666666),
            ),
          ),
          InkWell(
            onTap: () {},
            child: columnSingleButton(
              name: 'Repost',
              iconImage: 'assets/icons/repost.png',
              color: const Color(0xFF666666),
            ),
          ),
          InkWell(
            onTap: () {},
            child: columnSingleButton(
              name: 'Send',
              iconImage: 'assets/icons/sent_icon.png',
              color: const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }

}
