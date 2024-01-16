import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FutureOpenBar extends StatefulWidget {
  const FutureOpenBar({super.key, required this.data});
  final Map<String,String> data;

  @override
  State<FutureOpenBar> createState() => _FutureOpenBarState();
}

class _FutureOpenBarState extends State<FutureOpenBar> {
  late Stream<DateTime> _stream;
  late Timer _timer;
  late StreamController<DateTime> _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController<DateTime>();
    _streamController.add(DateTime.now());
    _stream = _streamController.stream;
    _timer = Timer.periodic(
        const Duration(seconds: 5),
        (timer) => _streamController.add(DateTime.now())
    );
  }

  Column clouds(String icon, String description) {
    String cloudsStr = '';
    // int cloudsValue = int.parse(cloud);
    // if (cloudsValue <= 15) { cloudsStr = 'cloudless';}
    // else if (cloudsValue <= 35 && cloudsValue > 16) {cloudsStr = 'cloudy';}
    // else if (cloudsValue <= 75 && cloudsValue > 36) {cloudsStr = 'partly cloudy';}
    // else if (cloudsValue <= 90 && cloudsValue > 76) {cloudsStr = 'significant cloud cover';}
    // else if (cloudsValue > 91) {cloudsStr = 'solid cloud cover';}

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(icon),
        Text(description,
            style: GoogleFonts.openSans(
                fontSize: 12, color: Colors.white)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) =>
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${widget.data['name']}, ${widget.data['country']}',
                      style: const TextStyle(color: Colors.white),),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search,
                          color: Colors.white,)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text('${widget.data['temp']!}°',
                        style: GoogleFonts.openSans(
                            fontSize: 100, color: Colors.white)),
                    Text('Feels like ${widget.data['feels_like']!}°',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.openSans(
                            fontSize: 10, color: Colors.white)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child:
                  StreamBuilder(
                    stream: _stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text('error');
                      if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                      return Text(
                          DateFormat('MMMM DD, HH:mm').format(snapshot.data!),
                      style: const TextStyle(color: Colors.white));
                    }
                  ),
                ),
              Align(
                alignment: Alignment.centerRight,
                child: clouds('https:${widget.data['icon']!}',widget.data['description']!),
                // Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Image.asset('assets/home/cloud and sun 1.png'),
                //     Text('${widget.data['description']}',
                //         style: GoogleFonts.openSans(
                //             fontSize: 12, color: Colors.white)),
                //   ],
                // ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Day ${widget.data['temp_max']}°',
                        style: const TextStyle(color: Colors.white)),
                    Text('Night ${widget.data['temp_min']}°',
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
