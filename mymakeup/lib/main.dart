import 'package:flutter/material.dart';

void main() {
  runApp(myMakeup());
}

class myMakeup extends StatelessWidget {
  const myMakeup({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List makeupImages = [
    "makeupImages/3.jpg",
    "makeupImages/5.jpg",
    "makeupImages/8.jpg",
    "makeupImages/6.jpg",
    "makeupImages/0.webp"
  ];
  List makeupNames = ["Powder", "Plusher", "Foundation", "LipStick", "Mascara"];
  List makeupSubTitle = [
    "flormar 03",
    "flormar 04",
    "bourjois 53",
    "bourjois velvet 02",
    "high sky mascara"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Makeup"),
        ),
        body: ListView(children: [
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: makeupImages.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Color.fromARGB(255, 235, 185, 245),
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    isThreeLine: true,
                    trailing: Icon(Icons.info),
                    title: Text("${makeupNames[i]}"),
                    subtitle: Text("${makeupSubTitle[i]}"),
                    leading: Image(image: AssetImage("${makeupImages[i]}")),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
