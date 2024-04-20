import 'package:flutter/material.dart';
import 'package:instagram_clone/features/add_post/screen/addpostscreen.dart';


class AppBarProfile extends StatelessWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "divyanhsusingh1286",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
            onPressed: () {
              _showAddPostBottomSheet(context);
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30,
            )),
        IconButton(
            onPressed: () {
              _showMoreBottomSheet(context);
            },
            icon: const Icon(
              Icons.density_medium_rounded,
              color: Colors.black,
              size: 30,
            ))
      ],
    );
  }

  void _showAddPostBottomSheet(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height * 0.9,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 3, color: Colors.black)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: mediaQueryData.size.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                   Navigator.pushNamed(context, AddPost.routeName);
                  },
                  child: const Row(
                    children: [
                    SizedBox(width: 20,),
                    Icon(Icons.grid_on_outlined,size: 30,),
                      SizedBox(width: 20,),
                    Text("Post",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  ],),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                  SizedBox(width: 20,),
                  Icon(Icons.history,size: 30,),
                    SizedBox(width: 20,),
                  Text("Story",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                ],),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),const SizedBox(height: 20,),
                const Row(
                  children: [
                  SizedBox(width: 20,),
                  Icon(Icons.highlight,size: 30,),
                    SizedBox(width: 20,),
                  Text("Story Highlight",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                ],),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),const SizedBox(height: 20,),
                const Row(
                  children: [
                  SizedBox(width: 20,),
                  Icon(Icons.live_tv_rounded,size: 30,),
                    SizedBox(width: 20,),
                  Text("Live",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                ],),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),const SizedBox(height: 20,),
                const Row(
                  children: [
                  SizedBox(width: 20,),
                  Icon(Icons.pages,size: 30,),
                    SizedBox(width: 20,),
                  Text("Made for you",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                ],),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),const SizedBox(height: 20,),
                const Row(
                  children: [
                  SizedBox(width: 20,),
                  Icon(Icons.book,size: 30,),
                    SizedBox(width: 20,),
                  Text("Guide",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                ],),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 30),
                  child: Container(
                    width: mediaQueryData.size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey.shade400)),
                  ),
                ),
              ],
            ),
          );
        });
  }
  void _showMoreBottomSheet(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (BuildContext context){
      return SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height*0.9,
        child:  Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 3, color: Colors.black)),
            ),
            const SizedBox(height: 30,),
            const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.settings,size: 30,),
                SizedBox(width: 20,),
                Text("Settings and privacy",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.ac_unit,size: 30,),
                SizedBox(width: 20,),
                Text("Thread",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.local_activity_outlined,size: 30,),
                SizedBox(width: 20,),
                Text("Your Activity",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.history,size: 30,),
                SizedBox(width: 20,),
                Text("Archive",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.qr_code_scanner_rounded,size: 30,),
                SizedBox(width: 20,),
                Text("QR code",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.bookmark_border_rounded,size: 30,),
                SizedBox(width: 20,),
                Text("Saved",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.groups_2_rounded,size: 30,),
                SizedBox(width: 20,),
                Text("Supervision",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 10,) ,const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.payment_outlined,size: 30,),
                SizedBox(width: 20,),
                Text("Order and payments",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.verified_outlined,size: 30,),
                SizedBox(width: 20,),
                Text("Meta Verified",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,), const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.density_medium_rounded,size: 30,),
                SizedBox(width: 20,),
                Text("Close Friends",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.star_border_purple500_sharp,size: 30,),
                SizedBox(width: 20,),
                Text("Favorites",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ],),
            const SizedBox(height: 20,),
          ],
        )
      );
    });
  }
}
