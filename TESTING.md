# 🧪 ShieldX Testing Guide

## ✅ Check if Flutter is Already Installed

Open terminal/PowerShell and run:
```bash
flutter --version
flutter doctor
```

If you see version info, Flutter is installed. ✅ Skip to **Testing** section.

If `flutter: command not found` → Install Flutter below.

---

## 📥 Download & Install Flutter SDK

### Step 1: Download Flutter
**Choose your OS:**

| OS | Download |
|----|----|
| **Windows** | [flutter_windows_3.24.x.zip](https://flutter.dev/docs/get-started/install/windows) |
| **macOS** | [flutter_macos_3.24.x.zip](https://flutter.dev/docs/get-started/install/macos) |
| **Linux** | [flutter_linux_3.24.x.tar.xz](https://flutter.dev/docs/get-started/install/linux) |

### Step 2: Extract & Setup

**Windows:**
```powershell
# Extract zip to C:\flutter (permanent location)
# Do NOT extract to Downloads folder

# Add to PATH:
# 1. Press Win + X → System
# 2. Advanced system settings → Environment Variables
# 3. Add to PATH: C:\flutter\bin
# 4. Restart PowerShell

# Verify:
flutter --version
```

**macOS:**
```bash
tar xf flutter_macos_*.tar.xz
export PATH="$PATH:~/flutter/bin"
# Add to ~/.zprofile for permanent setup
```

**Linux:**
```bash
tar xf flutter_linux_*.tar.xz
export PATH="$PATH:~/flutter/bin"
# Add to ~/.bashrc for permanent setup
```

### Step 3: Run Doctor
```bash
flutter doctor
```
Follow any missing tool instructions.

---

## 🚀 Test ShieldX App

### Navigate to Project
```bash
cd "c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx"
```

### Step 1: Get Dependencies
```bash
flutter pub get
```

### Step 2: List Available Devices
```bash
flutter devices
```

Shows all connected devices and emulators.

---

## 💻 Test on Windows (Desktop)

### Run
```bash
flutter run -d windows
```

The app opens in a desktop window.

### Build Release
```bash
flutter build windows --release
```

Output: `build/windows/runner/Release/shieldx.exe`

---

## 📱 Test on Android

### Option A: Physical Android Phone
1. **Connect via USB**
   - Enable USB Debugging on phone (Settings → Developer Options)
   - Connect USB cable
   
2. **Run:**
   ```bash
   flutter run -d <device_id>
   ```
   Replace `<device_id>` with ID from `flutter devices`

### Option B: Android Emulator
1. **Open Android Studio**
   - Click: AVD Manager
   - Create or start an emulator

2. **Run:**
   ```bash
   flutter run
   ```
   It automatically detects the emulator

3. **Or specify:**
   ```bash
   flutter run -d emulator-5554
   ```

### Build APK (for sharing/testing)
```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

---

## 🐧 Test on Linux

### Run
```bash
flutter run -d linux
```

### Build
```bash
flutter build linux --release
```

Output: `build/linux/x64/release/bundle/`

---

## 🍎 Test on macOS

### Run
```bash
flutter run -d macos
```

### Build
```bash
flutter run --release
```

Output: `build/macos/Build/Products/Release/shieldx.app`

---

## 🌐 Test on Web

### Run
```bash
flutter run -d chrome
```

Opens in Chrome browser.

### Build
```bash
flutter build web --release
```

Output: `build/web/`

---

## 🔍 Debugging Commands

### Hot Reload (while running app)
- **Type `r`** in terminal → reloads changes instantly
- **Type `R`** → full restart

### View Logs
```bash
flutter logs
```

### Run in Debug Mode
```bash
flutter run
```

### Run in Release Mode
```bash
flutter run --release
```

### Check for Build Issues
```bash
flutter analyze
dart format lib/
flutter test
```

---

## 📊 Quick Test Checklist

- [ ] App starts without crash
- [ ] Dashboard screen loads
- [ ] Bottom navigation works
- [ ] Can navigate to all 5 modules (Scanner, Spyware, Network, Settings)
- [ ] No console errors

---

## 🐛 Common Issues & Fixes

| Issue | Fix |
|-------|-----|
| `flutter: command not found` | Add Flutter to PATH and restart terminal |
| Android emulator not detected | Start Android Studio → AVD Manager → Create emulator |
| `No device connected` | `flutter devices` to check, or connect phone via USB |
| Build fails | Run `flutter clean` then `flutter pub get` |
| Port 8080 already in use | Stop other Flutter apps or use: `flutter run -d windows --no-track` |

---

## ✅ You're Ready!

```bash
cd shieldx
flutter pub get
flutter run  # Starts on available device or emulator
```

---

**Need help?** Check `DEVELOPMENT.md` for more details.
