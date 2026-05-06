# 🚀 ShieldX Quick Start (5 Minutes)

## 📋 Current Status
- ✅ Project created
- ✅ License updated to **MIT 2026**
- ❌ Flutter not installed (needs download)

---

## 1️⃣ Install Flutter SDK

### FASTEST WAY (Auto-Script):
```powershell
cd "c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx"
.\setup_flutter.ps1
```

### MANUAL WAY:
1. **Download**: https://flutter.dev/docs/get-started/install/windows
2. **Extract**: `C:\flutter` (NOT Downloads!)
3. **Add to PATH**:
   - Press `Win + X` → System Properties
   - Environment Variables → Path
   - Add: `C:\flutter\bin`
   - Add: `C:\flutter\bin\cache\dart-sdk\bin`
   - Restart PowerShell

4. **Verify**:
   ```powershell
   flutter --version
   flutter doctor
   ```

---

## 2️⃣ Test on DESKTOP (Windows App)

```bash
cd "c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx"
flutter pub get
flutter run -d windows
```

**What you'll see**: ShieldX app opens in desktop window
- Dashboard with shield animation
- 5 navigation buttons
- Cyberpunk dark theme

---

## 3️⃣ Test on ANDROID

### Option A: Physical Phone
```bash
# Enable USB Debug on phone
# Connect via USB
flutter run
```

### Option B: Android Emulator
```bash
# Start Android Studio → AVD Manager → Create emulator
# Then:
flutter run
```

---

## 4️⃣ Test on OTHER PLATFORMS

### Web (Chrome):
```bash
flutter run -d chrome
```

### Linux:
```bash
flutter run -d linux
```

### macOS:
```bash
flutter run -d macos
```

---

## ✅ Testing Checklist

Test these on Desktop first:
- [ ] App starts (no crash)
- [ ] Dashboard loads with Shield icon
- [ ] Bottom nav has 5 tabs
- [ ] Can tap each tab (Scanner, Spyware, Network, Settings)
- [ ] No red error messages in console

---

## 📁 Important Files

| File | Purpose |
|------|---------|
| `TESTING.md` | Full testing guide |
| `DEVELOPMENT.md` | Dev setup & Riverpod patterns |
| `setup_flutter.ps1` | Auto-setup script |
| `setup_flutter_windows.bat` | BAT version |
| `LICENSE` | MIT 2026 ✅ |

---

## 🆘 Still Having Issues?

1. **`flutter: command not found`**
   - Flutter not in PATH
   - Restart PowerShell
   - Run `flutter doctor`

2. **Can't see emulator**
   - Run `flutter devices`
   - Or start Android Studio

3. **Build fails**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

---

## 📞 Need Help?
- See: `TESTING.md` (detailed guide)
- Email: monishkjayan71@gmail.com
- GitHub: https://github.com/Godmkj/ShieldX

---

**LET'S GO!** 🛡️

```bash
cd shieldx
flutter pub get
flutter run
```
