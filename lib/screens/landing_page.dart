import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/add_item.dart';
import 'package:kcommerce/screens/favorites.dart';
import 'package:kcommerce/screens/home.dart';
import 'package:kcommerce/screens/messages.dart';
import 'package:kcommerce/screens/notification.dart';
import 'package:kcommerce/screens/onboard.dart';
import 'package:kcommerce/screens/post_new_item.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showWarning(context);
        return shouldPop ?? false;
      },
      child: Scaffold(
        body: IndexedStack(index: currentIndex, children: [
          Home(),
          Favorites(),
          const PostNewItem(),
          Messages(),
          const NotificationScreen()
        ]),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: blue2,
        //   onPressed: (){}, child: const Icon(Icons.add),),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: white,
            selectedItemColor: blue2,
            unselectedItemColor: grey1,
            currentIndex: currentIndex,
            elevation: 1,
            enableFeedback: true,
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.add_circle,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.forum),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.notifications),
              ),
            ]),
      ),
    );
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: white,
            title: const CommonText(
                text: "Do you want to exit app?", fontSize: 16),
            actions: [
              MaterialButton(
                  child: const CommonText(text: "No", fontSize: 12),
                  onPressed: () => Navigator.pop(context, false)),
              MaterialButton(
                  child: const CommonText(text: "Yes", fontSize: 12),
                  onPressed: () => Navigator.pop(context, true))
            ],
          ));
}
