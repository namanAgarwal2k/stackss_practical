class UserModel {
  final String profileUrl;
  final String postUrl;
  final String user;
  final String likedBy;
  final String likedCount;
  final String price;
  final String productDetails;

  UserModel(
      {required this.profileUrl,
      required this.postUrl,
      required this.user,
      required this.likedBy,
      required this.price,
      required this.productDetails,
      required this.likedCount});

  static List<UserModel> modelList = [
    UserModel(
        user: 'Francis',
        profileUrl:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
        postUrl:
            'https://images.pexels.com/photos/923210/pexels-photo-923210.jpeg?auto=compress&cs=tinysrgb&w=600',
        likedBy: "Naman ",
        likedCount: '14 others',
        price: '\$25',
        productDetails:
            ' This beautiful floral maxi dress is perfect for any occasion! Made from lightweight and breathable fabric, it'),
    UserModel(
        user: 'Francis',
        profileUrl:
            'https://img.freepik.com/free-photo/handsome-man-smiling-happy-face-portrait-close-up_53876-146189.jpg',
        postUrl:
            'https://images.pexels.com/photos/3099303/pexels-photo-3099303.jpeg?auto=compress&cs=tinysrgb&w=600',
        likedBy: "Adam",
        likedCount: '47 others',
        price: '\$12',
        productDetails:
            ' Made from soft and cozy acrylic yarn, this sweater is both warm and comfortable, making it perfect for snuggling up by the'),
    UserModel(
        user: 'Bernie',
        profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZG-8Pk5VYr_MOP4Ks3uEeZdArTUAizNRwg&usqp=CAU',
        postUrl:
            'https://images.pexels.com/photos/1079020/pexels-photo-1079020.jpeg?auto=compress&cs=tinysrgb&w=600',
        likedBy: "John",
        likedCount: '9 others',
        price: '\$16',
        productDetails:
            ' The Chelsea boot design features elasticated side panels, making them easy to slip on and off, while also providing a snug')
  ];
}
