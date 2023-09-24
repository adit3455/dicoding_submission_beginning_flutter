import 'package:ecommerce_dbestech/data/data.dart';
import 'package:ecommerce_dbestech/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailFruit extends StatelessWidget {
  final Fruit fruit;
  const DetailFruit({required this.fruit, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Fruit"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(fruit.image,
                height: 230.h,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                      text: fruit.name,
                      size: 20.sp,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 8.0),
                  BigText(text: "RP ${fruit.price},-", color: Colors.red),
                  const SizedBox(height: 5.0),
                  const Divider(),
                  BigText(
                      text: "Description",
                      size: 25.sp,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 5.0),
                  Text(fruit.description)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
