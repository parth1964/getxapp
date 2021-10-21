import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get total => books.value + pens.value;

  addData() {
    books.value++;
  }

  removeData() {
    if (books.value <= 0) {
      Get.snackbar(
        "Buying Books",
        "Not Less than Zero",
        barBlur: 4,
        isDismissible: true,
        icon: const Icon(Icons.alarm),
        duration: const Duration(seconds: 3),
      );
    }else{
      books.value--;
    }
  }
  
  increpens() {
    pens.value++;
  }

  decrpens() {
    if (pens.value <= 0) {
      Get.snackbar(
        "Buying Pen",
        "Not Less than Zero",
        barBlur: 4,
        isDismissible: true,
        icon: const Icon(Icons.alarm),
        duration: const Duration(seconds: 3),
      );
    }else{
      pens.value--;
    }
  }
}
