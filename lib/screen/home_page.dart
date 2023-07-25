import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stackss_practical/models/controller.dart';
import 'package:stackss_practical/models/user_model.dart';
import 'package:stackss_practical/models/user_post.dart';

class Home extends HookConsumerWidget {
  Home({super.key});

  final List people = [
    'Jake',
    'Ana C',
    'Francis',
    'Mary',
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appController);
    return Column(
      children: [
        Container(
          height: 60,
          color: state.primaryBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: state.black,
                      fontSize: 38,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: state.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.bell,
                    color: state.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: UserModel.modelList.length,
              itemBuilder: (BuildContext context, int index) {
                return UserPosts(
                  userModel: UserModel.modelList[index],
                );
              }),
        ),
      ],
    );
  }
}
