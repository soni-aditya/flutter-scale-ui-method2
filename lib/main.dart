import 'package:flutter/material.dart';
import 'package:flutter_scaling/dashboard.dart';
import 'package:flutter_scaling/size_scale_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if ((SizeScaleConfig.screenHeight == null) &&
        (SizeScaleConfig.screenWidth == null)) {
      Size screenSize = MediaQuery.of(context).size;
      SizeScaleConfig.screenHeight = screenSize.height;
      SizeScaleConfig.screenWidth = screenSize.width;
      SizeScaleConfig().calculateScaleRatios();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: Text('Navigate to other screen'),
        ),
      ),
    );
  }
}
