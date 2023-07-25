import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stackss_practical/models/controller.dart';
import 'package:stackss_practical/screen/home_page.dart';
import 'package:stackss_practical/screen/search.dart';
import 'package:stackss_practical/screen/user_add.dart';
import 'package:stackss_practical/screen/user_message.dart';
import 'package:stackss_practical/screen/user_profile.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode:
          ref.watch(appController).darkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  MyHomePage({super.key});

  int _selectedIndex = 0;

  final List<Widget> _children = [
    Home(),
    const UserSearch(),
    const UserAdd(),
    const UserMessage(),
    const UserAccount()
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigateBottomNavBar(int index) {
      // setState(() {
      //   _selectedIndex = index;
      // });
      ref.read(appController.notifier).navigateBottomNavBar(index);
    }

    final state = ref.watch(appController);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: state.primaryBackgroundColor,
          shadowColor: null,
          elevation: 0,
        ),
        body: _children[state.pageNo ?? 0],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.pageNo ?? 0,
          type: BottomNavigationBarType.fixed,
          onTap: navigateBottomNavBar,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.purple[300],
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 40,
                  color: Colors.purple[300],
                ),
                label: 'Upload'),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.mail_solid), label: 'messages'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: state.pageNo == 4 ? Colors.purple[300] : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZCldKgmO2Hs0UGk6nRClAjATKoF9x2liYYA&usqp=CAU',
                        fit: BoxFit.cover,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                label: 'account'),
          ],
        ));
  }
}
