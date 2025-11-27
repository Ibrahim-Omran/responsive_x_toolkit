import 'package:flutter/material.dart';
import 'package:responsive_x_toolkit/responsive_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive X Example",
      home: Scaffold(
        appBar: AppBar(title: const Text("Responsive X Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🔠 Font Size
              Text(
                "Hello",
                style: TextStyle(fontSize: 16.f(context)),
              ),

              // 📏 Spacing / Padding / Margin
              SizedBox(height: 20.s(context)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.s(context)),
                child: Container(
                  // 📐 Width / Height
                  width: 150.w(context),
                  height: 200.h(context),
                  decoration: BoxDecoration(
                    // 🔘 Border Radius
                    borderRadius: BorderRadius.circular(18.r(context)),
                    color: Colors.blue,
                  ),
                ),
              ),

              // 🎯 Icon Size
              Icon(Icons.home, size: 24.ic(context)),

              // 🖥 Responsive Layout Example
              SizedBox(height: 20.s(context)),
              ResponsiveLayout(
                mobile: Text("Mobile Layout"),
                tablet: Text("Tablet Layout"),
                desktop: Text("Desktop Layout"),
                largeDesktop: Text("Large Desktop Layout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
