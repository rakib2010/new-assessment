import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SortBottomSheet extends StatefulWidget {
  const SortBottomSheet({Key? key}) : super(key: key);

  @override
  State<SortBottomSheet> createState() => _SortBottomSheetState();
}

class _SortBottomSheetState extends State<SortBottomSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.91,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13.0), topRight: Radius.circular(13.0)),
          color: Colors.white),
      child: Column(
        children: [
          Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: ListTile(
                
                title: Center(child: Text('Sort by', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
                trailing: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close)),
              )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(22.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const[
                Text('Our recommendations',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Rating & Recommended',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Price & Recommended',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Distance & Recommended',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Rating only',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Price only',style: TextStyle(fontSize: 18.0),),
                Divider(),
                Text('Distance only',style: TextStyle(fontSize: 18.0),),
                Divider(),
               
               
              ],
            ),
          )),
          
        ],
      ),
    );
  }
}
