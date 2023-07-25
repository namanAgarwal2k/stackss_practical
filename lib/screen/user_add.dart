import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/controller.dart';

class UserAdd extends HookConsumerWidget {
  const UserAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appController);

    return Column(
      children: [
        Container(
          height: 298,
          color: state.primaryBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        'https://t3.ftcdn.net/jpg/03/28/19/46/360_F_328194664_RKSHvMLgHphnD1nwQYb4QKcNeEApJmqa.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Francis',
                        style: TextStyle(
                          fontSize: 21,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'How did I get here',
                        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Followers:49',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Following:81',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'FOLLOW',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: state.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(1, 6), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                            size: 30,
                          ),
                        ],
                      ),
                      const Text(
                        '41 Reviews',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'Items',
                  style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: state.primaryBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 8),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: state.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(
                                    'https://images.pexels.com/photos/1096849/pexels-photo-1096849.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    fit: BoxFit.cover,
                                    height: 170,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$ 60',
                                        style: TextStyle(
                                            // color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '16 ',
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            // color: Colors.black,
                                            weight: 400,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Size: 36',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'JS ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 8),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: state.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhPsKaolk6WQoo7AWQlTDW48HdXuo7n0N8lQ&usqp=CAU',
                                    fit: BoxFit.cover,
                                    height: 170,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$ 25',
                                        style: TextStyle(
                                            // color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '15 ',
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            // color: Colors.black,
                                            weight: 400,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Size: M',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'Nike ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 8),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: state.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(
                                    'https://images.pexels.com/photos/934070/pexels-photo-934070.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    fit: BoxFit.cover,
                                    height: 170,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$ 30',
                                        style: TextStyle(
                                            // color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '28 ',
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            // color: Colors.black,
                                            weight: 400,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Size: S',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'Unknown ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 8),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: state.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(
                                    'https://images.pexels.com/photos/87004/substances-colorful-color-pattern-87004.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    fit: BoxFit.cover,
                                    height: 170,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$ 10',
                                        style: TextStyle(
                                            // color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '21 ',
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            // color: Colors.black,
                                            weight: 400,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Size: M',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'Adidas ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
