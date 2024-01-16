import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
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
        const Duration(seconds: 1),
            (timer) => _streamController.add(DateTime.now())
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) return const Text('error');
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          return Text(
              DateFormat('MMMM DD, HH:mm:ss').format(snapshot.data!),
              style: const TextStyle(color: Colors.white));
        }
    );
  }
}
