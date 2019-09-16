import 'package:flutter/material.dart';
import 'package:flutter_scaling/size_scale_config.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Ratio Factor Height- ${SizeScaleConfig.heightScaleRatio}');
    print('Ratio Factor Width- ${SizeScaleConfig.heightScaleRatio}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Some title'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: TextStyle(
              fontSize: SizeScaleConfig().scaleWidth(16.0),
            ),
          ),
        ],
      ),
    );
  }
}
