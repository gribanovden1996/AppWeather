import 'package:flutter/material.dart';
import 'package:weather1/pages/today/small_widget.dart';




class PageTomorrow extends StatelessWidget {
  const PageTomorrow({super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
        color: const Color.fromARGB(255, 246, 237, 255),
        child: Padding(
          padding: const EdgeInsets.only(right:16.0,left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallWidget('assets/Group1.png','Wind speed','12km/h','2 km/h', arrow: true,img2: null,),
                  SmallWidget('assets/Group2.png','Rain chance','24%','10%', arrow: false, img2: 'assets/rainy.png',),
                ],
              ),
            ),
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallWidget('assets/Group1.png','Wind speed','12km/h','2 km/h', arrow: true,img2: null,),
                    SmallWidget('assets/Group2.png','Rain chance','24%','10%', arrow: false, img2: 'assets/rainy.png',),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallWidget('assets/Group2.png','Pressure','720 hpa','32 hpa', arrow: false,img2: 'assets/waves.png',),
                    SmallWidget('assets/Group2.png','UV Index','2,3','0.3', arrow: true, img2: 'assets/light_mode.png',),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Color.fromARGB(77, 208, 188, 255),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  height: 219,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Color.fromARGB(77, 208, 188, 255),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  height: 213,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Color.fromARGB(77, 208, 188, 255),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallWidget('assets/Group3.png','Sunrise','4:20 AM','4h ago', arrow: null, img2: null,),
                    SmallWidget('assets/Group4.png','Sunset','4:50 PM','in 9h',  arrow: null, img2: null,),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
