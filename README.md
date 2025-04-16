# Core Animation iOS Application

This iOS project showcases how to use Core Animation to build dynamic and visually engaging UI elements. It focuses on creating smooth animations using storyboard-based layouts and Swift.

## 📁 Project Structure

```
Core Animation/
├── Core Animation.xcodeproj/        # Xcode project configuration
├── ViewController.swift             # Main logic and animation setup
├── AppDelegate.swift                # App lifecycle management
├── SceneDelegate.swift              # Scene lifecycle handler
├── Assets.xcassets/                 # App assets and color sets
├── Base.lproj/
│   ├── LaunchScreen.storyboard      # Launch screen layout
│   └── Main.storyboard              # Main UI with animation targets
└── Info.plist                       # App configuration
```

## 🎯 Features

- **Core Animation Integration**: Uses `CABasicAnimation`, `CAKeyframeAnimation`, and `CAShapeLayer` to bring elements to life.
- **Storyboard-Based UI**: Built visually in Interface Builder, linked with outlets in Swift.
- **Optimized Performance**: Efficient use of layers and animation properties to minimize overhead.
- **Scalable Structure**: Organized for easy modification or extension.

## 🧰 Usage Instructions

When the app launches, it displays a UI with animated elements controlled by `ViewController.swift`. You can:

- Tap or trigger animations via on-screen buttons
- Observe how layers animate across properties like **position**, **opacity**, **scale**, and **rotation**

> You can modify the parameters in `ViewController.swift` to customize timing, easing, or transform effects.

## 💡 Animation Code Overview

The animation logic is mostly written in `ViewController.swift`. Here’s a simplified breakdown of what it does:

```swift
let animation = CABasicAnimation(keyPath: "position")
animation.fromValue = CGPoint(x: 100, y: 100)
animation.toValue = CGPoint(x: 200, y: 200)
animation.duration = 2.0
someLayer.add(animation, forKey: "move")
```

This creates a basic animation that moves a layer from one point to another over 2 seconds.

- `CABasicAnimation`: Animates between two values of a property
- `CAKeyframeAnimation`: Allows multiple key points for more complex paths
- `CAShapeLayer`: Used for drawing animated shapes like circles or paths

You can also animate properties like `transform.scale`, `opacity`, or `bounds`.

## 🛠 Requirements

- macOS with Xcode 12 or later
- iOS 13.0+
- Swift 5

## 👩‍💻 Author

- 💼 [LinkedIn](https://www.linkedin.com/in/mary-kalpana-mallavarapu-0b448b202/)
- 📧 Email: kalpanamallavarapu123@gmail.com
