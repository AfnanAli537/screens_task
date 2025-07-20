# 📱 Flutter Authentication UI

This Flutter project includes three key screens for a mobile authentication flow:

- Splash Screen
- Login Screen
- OTP Verification Screen

---

## ✅ Features

### 1. Splash Screen
- Shows a centered image.
- Waits for 3 seconds using `Future.delayed`.
- Automatically navigates to the Login screen.

### 2. Login Screen
- Contains:
  - Phone number `TextField`
  - Password `TextField`
  - Login button
- Input fields are 80% of screen width.
- Custom color and string constants used.

### 3. OTP Screen
- 6-digit input using a `Row` and `List.generate`.
- Each digit has a separate `TextField`.
- Clean border and white background for each box.

---


---

## 💡 Technologies & Concepts Used

- `StatefulWidget` and `StatelessWidget`
- Navigation using `Navigator.pushReplacement`
- Delayed transition using `Future.delayed`
- UI design with `TextField`, `Row`, `SizedBox`, `Column`
- `MediaQuery` for responsive width
- Custom `AppColors` and `AppStrings` files
- OTP input using `List.generate` and `TextField` with `maxLength: 1`

---

## 🖼️ Assets Setup

Make sure to declare your splash image in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/splash.png

