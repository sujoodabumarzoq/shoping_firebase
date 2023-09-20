import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdvertisementHomeScreen extends StatefulWidget {
  const AdvertisementHomeScreen({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  _AdvertisementHomeScreenState createState() => _AdvertisementHomeScreenState();
}

class _AdvertisementHomeScreenState extends State<AdvertisementHomeScreen> {
  int _currentIndex = 0;

  final List<String> imagePaths = [
    'assets/mainbanner.png',
    'assets/mainbanner.png',
    'assets/mainbanner.png',
    'assets/mainbanner.png',
    'assets/mainbanner.png',
    'assets/mainbanner.png',
  ];

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only( left: 20,top:40 ,right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: widget.width,
            child: CarouselSlider(
              items: imagePaths.map((imagePath) {
                return AdvertisementWidget(
                  imagePath: imagePath,
                  width: widget.width,
                  height: widget.height,
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true, // تمكين التشغيل التلقائي
                enlargeCenterPage: true,
                viewportFraction: 1.0, // عرض صفحة واحدة في كل مرة
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagePaths.map((imagePath) {
              int index = imagePaths.indexOf(imagePath);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ?Colors.indigo.shade400 : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class AdvertisementWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  AdvertisementWidget({
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  100,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
