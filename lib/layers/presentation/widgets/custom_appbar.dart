import 'package:assessment_project/layers/presentation/widgets/sortbottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'filterbottom_sheet.dart';






class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;


  @override
  Size get preferredSize => Size.fromHeight(60.0);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0))),
        backgroundColor: color,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: ()=> Get.bottomSheet(
                FilterBottomSheet(),
                isScrollControlled: true
                ),
              child: Row(
                children: const [
                  Icon(Icons.filter_alt, color: Colors.blueAccent,),
                  SizedBox(width: 6.0,),
                  Text('Filter', style: TextStyle(color: Colors.blueAccent),)
                ],
              ),
            ),
            GestureDetector(
              onTap: ()=> Get.bottomSheet(
                SortBottomSheet(),
                isScrollControlled: true
                ),
              child: Row(
                children: const[
                  Icon(Icons.sort, color: Colors.blueAccent),
                  SizedBox(width: 6.0,),
                  Text('Sort', style: TextStyle(color: Colors.blueAccent),)
                ],
              ),
            ),
            
          ]
        ),
        
    
      ),
    );
  }
  
  

}
