// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MaterialApp(
      home: UserApp(),
    ));

class UserApp extends StatelessWidget {
  UserApp({Key? key}) : super(key: key);

  final List<String> imgList = [
    'https://upload.wikimedia.org/wikipedia/commons/0/09/America_Online_logo.svg',
    'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg?sanitize=true'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SvgPicture.asset(
            //     'assets/images/satisfaction-guaranteed-Kliponius-Font-as-paths.svg'),

            // SvgPicture.network(
            //   'https://upload.wikimedia.org/wikipedia/commons/0/09/America_Online_logo.svg',
            // ),

            CarouselSlider(
              options: CarouselOptions(),
              items: imgList
                  .map((item) => Container(
                        child: Center(
                            child: SvgPicture.network(item,
                                fit: BoxFit.cover, width: 200)),
                      ))
                  .toList(),
            ),

            //Image.asset('assets/images/Batman_logo.png'),
            // Image.network(
            //     'https://i.ebayimg.com/images/g/LHwAAOSwIWZZh2su/s-l300.jpg'),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Rowdies ttf',
            //     style: TextStyle(fontFamily: 'Rowdies', fontSize: 20),
            //   ),
            // ),

            // Container(
            //   height: 300,
            //   padding: EdgeInsets.all(20),
            //   constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
            //   decoration: const BoxDecoration(
            //     color: Colors.black,
            //     image: DecorationImage(
            //       fit: BoxFit.contain,
            //       image: AssetImage('assets/images/Batman_logo.png'),
            //     ),
            //   ),
            // ),

            // ConstrainedBox(
            //   constraints: BoxConstraints(
            //       //maxWidth: 200,
            //       ),
            //   child: Text('I am a Batman'),
            // )

            // SizedBox(
            //   width: 200,
            //   height: 20,
            //   child: Text(
            //       'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata'),
            // )

            // Text('${Uuid().v4()}'),

            // Shimmer.fromColors(
            //     child: Text('Shimmer example'),
            //     baseColor: Colors.deepPurple,
            //     highlightColor: Colors.green)
          ],
        ),
      ),
    );
  }
}
