import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.6,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 12,
              ),
              const Text("Name"),
              SizedBox(
                width: mediaQueryData.size.width * 0.41,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Follow")),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/virat.png',
            scale: 1.0,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 32,
                  )),
              const SizedBox(
                width: 14,
              ),
              Image.asset(
                'assets/chatb.png',
                width: 30,
                height: 28,
              ),
              const SizedBox(
                width: 14,
              ),
              Image.asset(
                'assets/send.png',
                width: 30,
                height: 28,
              ),
              SizedBox(
                width: mediaQueryData.size.width * 0.5,
              ),
              Image.asset(
                'assets/save.png',
                width: 30,
                height: 28,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("123124 likes", style: TextStyle(fontWeight: FontWeight.w700),),
          SizedBox(height: 5,),
          Text("name  and the caption ",style: TextStyle(fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
