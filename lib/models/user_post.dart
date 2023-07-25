import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stackss_practical/models/user_model.dart';

import 'controller.dart';

class UserPosts extends HookConsumerWidget {
  final UserModel userModel;

  const UserPosts({super.key, required this.userModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appController);

    return Container(
      color: state.primaryBackgroundColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(children: [
          Container(
            color: state.primaryBackgroundColor,
            height: 400,
            child: Image.network(
              userModel.postUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            alignment: AlignmentDirectional.centerEnd,
            width: double.infinity,
            height: 50,
            color: state.primaryBackgroundColor,
            child: Icon(
              Icons.more_horiz,
              color: state.black,
            ),
          ),
          Positioned(
              bottom: 8,
              left: 140,
              child: Icon(
                Icons.more_horiz,
                size: 60,
                color: state.white,
              )),
          Positioned(
              top: 12,
              left: 12,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: state.primaryBackgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      userModel.profileUrl,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              )),
        ]),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: state.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.mail, color: state.black),
                  ),
                  Icon(CupertinoIcons.share, color: state.black),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300],
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'BUY',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Text(
                userModel.likedBy,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('and'),
              Text(
                userModel.likedCount,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('like this')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  // style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: userModel.user,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: state.black),
                    ),
                    TextSpan(
                      text: userModel.productDetails,
                      style: TextStyle(color: state.black),
                    )
                  ])),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
          child: RichText(
              text: TextSpan(style: TextStyle(color: state.black), children: [
            TextSpan(
              text: 'Price: ',
              style: TextStyle(fontWeight: FontWeight.w400, color: state.black),
            ),
            TextSpan(text: userModel.price)
          ])),
        ),
      ]),
    );
  }
}
