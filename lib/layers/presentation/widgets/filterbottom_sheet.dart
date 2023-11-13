import 'package:flutter/material.dart';
import 'package:get/get.dart';




class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  double price = 50;
  double maxPrice = 540;
  double minPrice = 20;

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
                leading: Text(
                  'Reset',
                  style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                ),
                title: Center(child: Text('Filters', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                trailing: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close)),
              )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PRICE PER NIGTH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Container(
                      height: 40.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.6),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text('540+ \$'),
                      ),
                    )
                  ],
                ),
                Slider(
                  value: price.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      price = newValue;
                    });
                  },
                  min: minPrice,
                  max: maxPrice,
                  divisions: (maxPrice - minPrice).toInt(),
                  label: price.toString(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${minPrice.toInt()}\$'),
                    Text('${price.toInt()}\$'),
                  ],
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'RATING',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                          child: Text(
                        '0+',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                          child: Text(
                        '0+',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                          child: Text(
                        '0+',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                          child: Text(
                        '0+',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                          child: Text(
                        '0+',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'HOTEL CLASS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ))),
                    Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ))),
                    Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ))),
                    Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ))),
                    Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ))),
                  ],
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'DISTANCE FROM',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Location', style: TextStyle(fontSize: 18.0)),
                    Text('City Center >', style: TextStyle(fontSize: 18.0))
                  ],
                ),
                Divider(),
              ],
            ),
          )),
          Container(
              height: 100.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0.0, -4.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  width: double.infinity,
                  height: 50.0,
                  child: Center(
                      child: Text(
                    'Show results',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )),
                ),
              )),
        ],
      ),
    );
  }
}
