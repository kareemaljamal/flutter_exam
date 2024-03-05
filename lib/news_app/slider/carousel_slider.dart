import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_flutter/news_app/slider/slider_item.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  CarouselController buttonCarouselController =
      CarouselController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      CarouselSlider(
        carouselController: buttonCarouselController,
        items: [
          SliderItem(
            img:
                'assets/images/news_images/news_pic_girl.jpg',
            description:
                '10 Easy Self-Care Ideas That Can Help Boost Your Health',
            title: "Self Care",
            color: Color.fromRGBO(254, 240, 199, 1),
            textColor: Color.fromRGBO(147, 55, 13, 1),
          ),
          SliderItem(
            img:
                'assets/images/news_images/news_img_girl2.jpg',
            description:
                'How To Take Care Of Menstrual Hygiene During Menstrual Cycle',
            title: 'Cycle',
            color: Color.fromRGBO(254, 228, 226, 1),
            textColor: Color.fromRGBO(145, 32, 24, 1),
          ),
          SliderItem(
            img:
                'assets/images/news_images/news_pic_girl.jpg',
            description:
                '10 Easy Self-Care Ideas That Can Help Boost Your Health',
            title: "Self Care",
            color: Color.fromRGBO(254, 240, 199, 1),
            textColor: Color.fromRGBO(147, 55, 13, 1),
          ),
          SliderItem(
            img:
                'assets/images/news_images/news_img_girl2.jpg',
            description:
                'How To Take Care Of Menstrual Hygiene During Menstrual Cycle',
            title: 'Cycle',
            color: Color.fromRGBO(254, 228, 226, 1),
            textColor: Color.fromRGBO(145, 32, 24, 1),
          ),
        ],
        options: CarouselOptions(
          viewportFraction: .9,
          height: height / 5,
          aspectRatio: 16 / 9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration:
              Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          scrollDirection: Axis.horizontal,
        ),
      ),
    ]);
  }
}
