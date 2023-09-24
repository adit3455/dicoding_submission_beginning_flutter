import 'package:ecommerce_dbestech/data/data.dart';
import 'package:ecommerce_dbestech/pages/detail_fruit.dart';
import 'package:ecommerce_dbestech/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllFruit extends StatelessWidget {
  const AllFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Fruit Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const BigText(text: "All Fruit"),
              BigText(text: "${fruits.length} Item"),
            ]),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailFruit(fruit: fruits[index]),
                      )),
                  contentPadding: const EdgeInsets.all(10.0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0.r),
                    child: Image.network(
                      fruits[index].image,
                      fit: BoxFit.cover,
                      width: 80.w,
                      height: 80.h,
                    ),
                  ),
                  title: Text(fruits[index].name),
                  titleAlignment: ListTileTitleAlignment.center,
                  trailing: Icon(Icons.arrow_right_outlined, size: 30.h),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
