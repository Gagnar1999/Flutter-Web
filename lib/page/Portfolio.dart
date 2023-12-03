import 'package:flutter/material.dart';
import 'package:web_portfolio/colors/colors.dart';
import 'package:web_portfolio/painter/ChessPainter.dart';
import 'package:web_portfolio/widgets/GradientText.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(gradient: commonGradient),
        child: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.sizeOf(context),
              painter: ChessPainter(),
            ),

            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                flexibleSpace: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(50)),
                      gradient: const LinearGradient(
                          colors: [Color(0xFF6A35FF), Color(0xFFFF7B9A)])),
                  child: Text(
                    "Made with ❤ in Flutter",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 300,
                            margin: EdgeInsets.only(top: 30, left: 150),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("images/avatar.jpg")),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GradientText(
                              "I am Gagan Deep Narang",
                              gradient: LinearGradient(
                                  colors: [Color(0xFF6A35FF), Color(0xFFFF7B9A)]),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Android & Flutter Developer",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            GradientText(
                              "Love to Read about Tech, Explorer to Reverse Engineering, require help to understand AOSP....... \nGamer by Heart.",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.pinkAccent),
                              gradient: LinearGradient(
                                  tileMode: TileMode.repeated,
                                  colors: [Color(0xFF3BFFAD), Color(0xFFFF426F)]),
                            )
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}


