import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stateget/mycontroller.dart';
import 'package:stateget/total_page.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Books',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: InkWell(
                    onTap: () {
                      c.addData();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () => Text(
                    '${c.books}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: InkWell(
                    onTap: () {
                      c.removeData();
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Pens',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: InkWell(
                    onTap: () {
                      c.increpens();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () => Text(
                    c.pens.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: InkWell(
                    onTap: () {
                      c.decrpens();
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
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
                      onPressed: ()=>Get.to(TotalPage()),
                      child: const Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
