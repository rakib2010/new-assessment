import 'package:assessment_project/layers/domain/controllers/home_controller.dart';
import 'package:assessment_project/layers/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';






class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String pageId = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeController = Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(color: Colors.white),
      body: Obx(() => _homeController.isLoading.isTrue ? Center(child: CircularProgressIndicator()):
      ListView.builder(
          itemCount: _homeController.hotelList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 15.0),
              //height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(13.0),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 130.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13.0),
                            topRight: Radius.circular(13.0)),
                        image: DecorationImage(
                            image: NetworkImage(_homeController.hotelList[index]['image']),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0, right: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/heart.png'),
                          ),
                        ),
                      ),
                    ),        
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              
                              Text('Hotel'),
                            ],
                          ),
                          Text((_homeController.hotelList[index]['name']?? ''), style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Container(
                                width: 50.0,
                                margin: EdgeInsets.symmetric(vertical: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20.0)
                                ),
                                child: Center(child: Text((_homeController.hotelList[index]['review_score']).toString(), style: TextStyle(color: Colors.white),)),
                              ),
                              Text('${(_homeController.hotelList[index]['review'])?? ''}'),
                              SizedBox(width: 12.0,),
                              Icon(Icons.location_on_rounded, size: 12.0,),
                              Text((_homeController.hotelList[index]['address'])?? ''),
                            ],
                          ), 
                          Container(
                            //height: 50.0,
                            padding: EdgeInsets.all(10.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(color: Colors.green.withOpacity(0.3), child: Center(child: Text('Our lowest price'),),),
                                    Text('\$${_homeController.hotelList[index]['price']}', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18.0),),
                                    Text('Renaissance')
                                  ],
                                ),
                          
                                Text('View Deal >', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
                              ],
                            ),
                          ),

                          Align(alignment: Alignment.bottomRight, child: Text('More prices'))

                  
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            );
          })

      )
    );
  }
}
