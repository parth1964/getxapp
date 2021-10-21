import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mycontroller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: Text(
              'Total Amount',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
                  c.total.toString(),
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
          )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Container(
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade900,
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Get.back(),
                  child:const  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
