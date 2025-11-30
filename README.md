
# Responsive X Toolkit

### The Ultimate Responsive Toolkit for Flutter

A modern, lightweight, and production-ready solution for responsive UI in Flutter.  
Built to help you scale fonts, spacing, icons, radius, and layout across all devices effortlessly.

---

## 🌟 Overview

ResponsiveX provides a **unified responsive engine** that works flawlessly on:

- 📱 Mobile
- 📲 Small Tablets  
- 💻 Tablets
- 🖥 Desktop
- 🖥️ Large Desktop / Ultra-Wide
- 🌐 Web (Fully supported)

With a single API, you can scale:
- Font sizes
- Margins & spacing
- Widths & heights
- Icons
- Border radius
- Complete layout switching

---

## ✨ Features

- ✔ **Responsive font**: `16.f(context)`
- ✔ **Responsive spacing**: `20.s(context)`
- ✔ **Responsive icon**: `24.ic(context)`
- ✔ **Responsive width/height**: `150.w(context)`
- ✔ **Responsive border radius**: `18.r(context)`
- ✔ **Smart scaling engine** based on width + pixel density
- ✔ **Clean extensions** with zero boilerplate
- ✔ **Full multi-layout support** (Mobile / Tablet / Desktop / Large Desktop)
- ✔ **No dependencies** — Lightweight & fast

---

## 🚀 Quick Start

### 1. Add Dependency

Add to your `pubspec.yaml`:

```yaml
dependencies:
  responsive_x_toolkit: ^1.0.5
```

### 2. Import Package

```dart
import 'package:responsive_x_toolkit/responsive_x.dart';
```

[//]: # ()
[//]: # (### 3. Wrap Your App)

[//]: # ()
[//]: # (```dart)

[//]: # (void main&#40;&#41; {)

[//]: # (  runApp&#40;MyApp&#40;&#41;&#41;;)

[//]: # (})

[//]: # ()
[//]: # (class MyApp extends StatelessWidget {)

[//]: # (  @override)

[//]: # (  Widget build&#40;BuildContext context&#41; {)

[//]: # (    return MaterialApp&#40;)

[//]: # (      home: ResponsiveWrapper&#40;)

[//]: # (        child: YourHomePage&#40;&#41;,)

[//]: # (      &#41;,)

[//]: # (    &#41;;)

[//]: # (  })

[//]: # (})

[//]: # (```)

---

## 💡 Usage Examples

### 🔠 Responsive Font Size

```dart
Text(
  "Hello ResponsiveX",
  style: TextStyle(
    fontSize: 16.f(context), // Responsive font size
    fontWeight: FontWeight.bold,
  ),
);
```

### 📏 Responsive Spacing & Padding

```dart
Column(
  children: [
    SizedBox(height: 20.s(context)), // Responsive spacing
    
    Padding(
      padding: EdgeInsets.all(16.s(context)), // Responsive padding
      child: Container(
        width: 150.w(context), // Responsive width
        height: 200.h(context), // Responsive height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r(context)), // Responsive radius
          color: Colors.blue,
        ),
      ),
    ),
  ],
);
```

### 🎯 Responsive Icons

```dart
Row(
  children: [
    Icon(Icons.home, size: 24.ic(context)), // Responsive icon
    Icon(Icons.settings, size: 24.ic(context)),
    Icon(Icons.person, size: 24.ic(context)),
  ],
);
```

### 🖥 Responsive Layout Builder

```dart
ResponsiveLayout(
  mobile: Scaffold(
    appBar: AppBar(title: Text('Mobile View')),
    body: MobileHomePage(),
  ),
  tablet: Scaffold(
    appBar: AppBar(title: Text('Tablet View')),
    body: TabletHomePage(),
  ),
  desktop: Scaffold(
    appBar: AppBar(title: Text('Desktop View')),
    body: DesktopHomePage(),
  ),
  largeDesktop: Scaffold(
    appBar: AppBar(title: Text('Large Desktop View')),
    body: LargeDesktopHomePage(),
  ),
);
```

### 📱 Conditional Layout

```dart
if (context.isMobile)
  MobileWidget()
else if (context.isTablet)
  TabletWidget()
else
  DesktopWidget()
```

---

## 🎛 Advanced Usage

### Custom Breakpoints

```dart
ResponsiveLayout(
  breakpoints: ResponsiveBreakpoints(
    mobile: 480,
    tablet: 768,
    desktop: 1024,
    largeDesktop: 1440,
  ),
  mobile: Text('Mobile'),           // Mobile Screen
  tablet: Text('Tablet'),           // Tablet Screen
  desktop: Text('Desktop'),         // Desktop Screen
  largeDesktop: Text('Large Desktop'), // Large Desktop Screen
)

```

### Responsive Orientation

```dart
@override
Widget build(BuildContext context) {
  return OrientationBuilder(
    builder: (context, orientation) {
      return orientation == Orientation.portrait
          ? PortraitLayout()
          : LandscapeLayout();
    },
  );
}
```

### Combined Responsive Values

```dart
Container(
  margin: EdgeInsets.symmetric(
    horizontal: 20.s(context),
    vertical: 10.s(context),
  ),
  padding: EdgeInsets.all(16.s(context)),
  width: context.isMobile ? 300.w(context) : 500.w(context),
  height: 150.h(context),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.r(context)),
    color: Colors.blue.shade100,
  ),
  child: Text(
    'Responsive Container',
    style: TextStyle(fontSize: 18.f(context)),
  ),
);
```

---

## 📊 Breakpoint Reference

| Device | Breakpoint | Typical Use |
|--------|------------|-------------|
| 📱 Mobile | ≤ 480px | Phones |
| 📲 Small Tablet | 481px - 768px | Small tablets |
| 💻 Tablet | 769px - 1024px | Tablets, iPad |
| 🖥 Desktop | 1025px - 1440px | Laptops, small screens |
| 🖥️ Large Desktop | ≥ 1441px | Large monitors, TV |

---

## 🤝 Contributing

We welcome contributions! Please feel free to submit issues, feature requests, or pull requests.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🆘 Support

If you encounter any problems or have questions:

- 📧 **Email**: ibrahimomran705@gmail.com
- 🐛 **Issues**: [GitHub Issues](https://github.com/Ibrahim-Omran/responsive_x_toolkit/issues)

[//]: # (- 📚 **Documentation**: [Full Documentation]&#40;https://docs.responsivex.dev&#41;)

---

## 🌟 Show Your Support

If you find this package helpful, please consider:

- ⭐ Starring the repository
- 🐛 Reporting bugs
- 💡 Suggesting new features
- 📢 Sharing with other developers

**Built with ❤️ for the Flutter community**
- **Developed by Ibrahim Omran**

--- 

*ResponsiveXToolKit - Make every pixel count*
