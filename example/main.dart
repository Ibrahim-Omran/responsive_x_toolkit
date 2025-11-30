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
                style: TextStyle(fontSize: 16.x(context)),
              ),

              // 📏 Spacing / Padding / Margin
              SizedBox(height: 20.x(context)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.x(context)),
                child: Container(
                  // 📐 Width / Height
                  width: 150.x(context),
                  height: 200.x(context),
                  decoration: BoxDecoration(
                    // 🔘 Border Radius
                    borderRadius: BorderRadius.circular(18.x(context)),
                    color: Colors.blue,
                  ),
                ),
              ),

              // 🎯 Icon Size
              Icon(Icons.home, size: 24.x(context)),

              // 🖥 Responsive Layout Example
              SizedBox(height: 20.x(context)),
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
