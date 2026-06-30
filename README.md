# 🍞 Flutter Toast Rana

A beautiful, customizable, and lightweight Flutter toast package with built-in swipe-to-dismiss support.

Display elegant toast notifications with modern animations and four predefined themes. Users can easily dismiss a toast by swiping, making notifications feel more natural and interactive.

---

## ✨ Features

- 🎨 Beautiful modern toast UI
- 👆 Swipe to dismiss using GestureDetector
- ✅ Success theme
- ❌ Error theme
- ⚠️ Warning theme
- ℹ️ Info theme
- ⚡ Lightweight and fast
- 📱 Responsive design
- 🎭 Smooth animations
- 🔧 Easy to customize
- 🚀 Simple API
- 💙 Flutter friendly

---

## 📸 Preview

| Success | Error | Warning | Info |
|---------|-------|---------|------|
|    ✅   |  ❌   |   ⚠️   |  ℹ️  |

> Screenshots and GIFs will be added soon.

---

# 🚀 Getting Started

Add the package to your **pubspec.yaml**

```yaml
dependencies:
 flutter_toast_rana : ^latest
```

Then install packages

```bash
flutter pub get
```

Import the package

```dart
import 'package:flutter_toast_rana/flutter_toast_rana.dart';
```

---

# 💡 Basic Usage

```dart
FlutterToastRana.show(
  context: context,
  message: "Profile updated successfully!",
);
```

---

# 🎨 Toast Types

### Success

```dart
FlutterToastRana.success(
  context: context,
  message: "Operation completed successfully.",
);
```

---

### Error

```dart
FlutterToastRana.error(
  context: context,
  message: "Something went wrong.",
);
```

---

### Warning

```dart
FlutterToastRana.warning(
  context: context,
  message: "Please check your input.",
);
```

---

### Info

```dart
FlutterToastRana.info(
  context: context,
  message: "New update is available.",
);
```

---

# 👆 Swipe to Dismiss

Every toast supports swipe gestures.

Simply swipe the toast in the supported direction and it will automatically disappear.

No additional configuration is required.

---

# ⚙️ Customization

Customize your toast easily.

Example:

```dart
FlutterToastRana.info(
  context: context,
  message: "Hello Flutter!",
  duration: Duration(seconds: 3),
);
```

More customization options will continue to be added in future releases.

---

# 📦 Example

```dart
ElevatedButton(
  onPressed: () {
    FlutterToastRana.success(
      context: context,
      message: "Login Successful",
    );
  },
  child: Text("Show Toast"),
)
```

---

# 🎯 Why Smart Toast?

✔ Beautiful UI

✔ Gesture Support

✔ Lightweight

✔ Easy Integration

✔ Production Ready

✔ Smooth Animation

✔ Four Built-in Themes

---

# 📋 Additional Information

### Supported Themes

- ✅ Success
- ❌ Error
- ⚠️ Warning
- ℹ️ Info

### Platform Support

- Android
- iOS
- Windows
- macOS
- Linux
- Web

---

# ❤️ Contributing

Contributions are welcome!

If you have ideas, bug reports, or feature requests, feel free to open an issue or submit a pull request.

---

# 🐞 Reporting Issues

Found a bug?

Please create an issue with:

- Flutter version
- Package version
- Platform
- Expected behavior
- Actual behavior
- Reproduction steps

---

# 📄 License

This project is licensed under the MIT License.

---

## ⭐ Support

If you like this package, please consider giving it a ⭐ on GitHub and a 👍 on pub.dev.

It helps the project grow and motivates future improvements.

Happy Fluttering! 🚀