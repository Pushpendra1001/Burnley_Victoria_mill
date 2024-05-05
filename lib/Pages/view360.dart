import 'package:flutter/material.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class View360 extends StatelessWidget {
  View360({super.key, required this.path});

  var path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('360° View'),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PanoramaViewer(
            animReverse: false,
            zoom: -10,
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
            interactive: true,
            sensorControl: SensorControl.orientation,
          ),
        ),
      ),
    );
  }
}
