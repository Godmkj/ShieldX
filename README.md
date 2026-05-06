# 🛡️ ShieldX — Open-Source Digital Security Suite

World's #1 cross-platform security application with **zero data collection, zero logs, and zero compromise**.

**GitHub**: [github.com/Godmkj/ShieldX](https://github.com/Godmkj/ShieldX)  
**Author**: [MONISH K JAYAN](https://github.com/Godmkj)  
**Contact**: monishkjayan71@gmail.com | [@MONISHKJAYAN](https://x.com/MONISHKJAYAN)

## ✨ Features

- **Virus & Malware Scanner** — Hash-based + EICAR test, Real-time monitor
- **Spyware & Government Malware Detector** — Pegasus, Predator, FinFisher signatures
- **Browser Security Guard** — Safe browsing, phishing detection, link scanner
- **Message & Link Scanner** — SMS, WhatsApp, Telegram, Email link scanning
- **Network Firewall & Monitor** — Live connections, per-app firewall, DNS leak detector
- **Privacy & Vault Tools** — AES-256 encrypted vault, password manager, privacy cleaner
- **AI Threat Intelligence** — On-device YARA rules, behavioral analysis, anti-ransomware
- **Advanced Protection** — Safe banking mode, app sandboxing, anti-theft, built-in VPN

## 🏗️ Architecture

- **UI**: Flutter + Dart (cross-platform)
- **State Management**: Riverpod 2.x
- **Database**: Hive + Isar (encrypted, offline)
- **Encryption**: AES-256-GCM
- **Scanning Engine**: Dart Isolates + FFI (C/Rust)
- **Signatures**: SQLite (ClamAV-compatible)
- **YARA Engine**: libyara via FFI

## 📋 Phase 1 (Current) — Core Shell
- [x] Project initialization
- [ ] Premium cyberpunk UI + theming
- [ ] Animated dashboard (shield, security score)
- [ ] Virus/Malware scanner
- [ ] Spyware detector
- [ ] Network monitor
- [ ] Basic link scanner
- [ ] Settings (local only)

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0+)
- Dart SDK (3.0+)
- Git

### Installation
```bash
cd shieldx
flutter pub get
flutter run
```

### Build for Platforms
```bash
# Android
flutter build apk

# iOS
flutter build ios

# Windows
flutter build windows

# Linux
flutter build linux

# macOS
flutter build macos

# Web
flutter build web
```

## 📁 Project Structure
```
lib/
├── core/
│   ├── theme/           ← Cyberpunk design system
│   ├── router/          ← Navigation
│   ├── providers/       ← Riverpod state
│   ├── constants/       ← App constants
│   └── utils/           ← Helpers (crypto, files)
├── features/
│   ├── dashboard/       ← Main dashboard
│   ├── scanner/         ← Virus scanner
│   ├── spyware/         ← Spyware detector
│   ├── browser_guard/   ← Safe browsing
│   ├── message_scan/    ← Link scanner
│   ├── network/         ← Firewall
│   ├── privacy/         ← Privacy tools
│   ├── vault/           ← Encrypted vault
│   ├── ai_intelligence/ ← Threat detection
│   └── settings/        ← Local settings
├── services/            ← Core services
└── main.dart
```

## 🛡️ Privacy First
- **Zero data collection** — Nothing leaves your device
- **No cloud sync** — Everything is local
- **Opt-in updates** — Anonymous downloads only
- **Community threat feed** — File hashes only (SHA-256), never content
- **Open source** — Full transparency, audit the code

## 📞 Support
- **GitHub Issues**: [github.com/Godmkj/ShieldX/issues](https://github.com/Godmkj/ShieldX/issues)
- **Discussions**: [github.com/Godmkj/ShieldX/discussions](https://github.com/Godmkj/ShieldX/discussions)
- **Email**: monishkjayan71@gmail.com
- **Twitter/X**: [@MONISHKJAYAN](https://x.com/MONISHKJAYAN)

## 📄 License
MIT License (2026) — See [LICENSE](LICENSE) file

---

**ShieldX — Because privacy is not a privilege. It's a right.**
