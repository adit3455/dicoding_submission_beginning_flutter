import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_dbestech/config/all_config.dart';
import 'package:ecommerce_dbestech/data/data.dart';
import 'package:ecommerce_dbestech/pages/all_fruit.dart';
import 'package:ecommerce_dbestech/pages/detail_fruit.dart';
import 'package:ecommerce_dbestech/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/card_carousel.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Home Page"),
          elevation: 1,
          leading: const SizedBox()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Hi, Good ${AllConfig().checkTimeNow} $title"),
              const SizedBox(height: 20.0),
              CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items:
                      fruits.map((item) => CardCarousel(item: item)).toList()),
              const SizedBox(height: 20.0),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const BigText(text: "Featured Fruits"),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllFruit())),
                    child: const Text("See All")),
              ]),
              const SizedBox(height: 10.0),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.h,
                      childAspectRatio: 2.h / 2.h,
                      crossAxisSpacing: 20.h,
                      mainAxisSpacing: 20.h),
                  itemCount: fruits.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailFruit(fruit: fruits[index]),
                            ));
                      },
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(fruits[index].image,
                                  height: 100.h,
                                  width: 155.w,
                                  fit: BoxFit.cover)),
                          Text(
                            fruits[index].name,
                            style: TextStyle(
                                fontSize: 18.0.sp, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
