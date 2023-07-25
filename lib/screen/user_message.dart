import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/controller.dart';

class UserMessage extends HookConsumerWidget {
  const UserMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appController);

    return Column(
      children: [
        Container(
          height: 150,
          color: state.primaryBackgroundColor,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Messages',
                      style: TextStyle(
                          // color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.w500),
                    ),
                    // Container(
                    //   width: 50,
                    //   height: 50,
                    //   decoration: const BoxDecoration(
                    //     color: Colors.white,
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: const Icon(Icons.filter_list),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
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
                    children: const [
                      Icon(
                        Icons.search,
                        // color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        ' Search for members',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: state.primaryBackgroundColor,
          child: Column(
            children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: const Text('Jake'),
                subtitle: Text(
                  'There are no major defects or damages..',
                  style: TextStyle(color: state.black),
                ),
                trailing: const Text(
                  'Now',
                  // style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'https://img.freepik.com/free-photo/handsome-man-smiling-happy-face-portrait-close-up_53876-146189.jpg',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: const Text('Ana C'),
                subtitle: Text(
                  'Could you be more specific?',
                  style: TextStyle(color: state.black),
                ),
                trailing: const Text(
                  '3m ago',
                  // style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'https://t3.ftcdn.net/jpg/03/28/19/46/360_F_328194664_RKSHvMLgHphnD1nwQYb4QKcNeEApJmqa.jpg',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text(
                  'Francis',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                subtitle: const Text('Thank you mate!'),
                trailing: const Text(
                  '2h ago',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZG-8Pk5VYr_MOP4Ks3uEeZdArTUAizNRwg&usqp=CAU',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text(
                  'Mary',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                subtitle: const Text('You: Alright see ya'),
                trailing: const Text(
                  '9m ago',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
