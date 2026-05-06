# Contributing to ShieldX

Thank you for your interest in contributing to ShieldX! We welcome all contributions that align with our mission of privacy-first security.

## Code of Conduct

Please be respectful and constructive. We are committed to providing a welcoming and inclusive environment.

## How to Contribute

### 1. Fork & Clone
```bash
git clone https://github.com/YOUR_USERNAME/shieldx.git
cd shieldx
```

### 2. Create a Branch
```bash
git checkout -b feature/your-feature-name
```

### 3. Development Setup
```bash
flutter pub get
flutter run
```

### 4. Code Standards
- Follow Dart conventions (dart format, dart analyze)
- Use Riverpod for state management
- Keep functions small and testable
- Add comments for complex logic
- Test on all platforms before PR

### 5. Commit & Push
```bash
git add .
git commit -m "feat: add new feature"
git push origin feature/your-feature-name
```

### 6. Open a Pull Request
- Clear description of changes
- Link related issues
- Screenshots of UI changes
- Test results on affected platforms

## Development Guidelines

### File Organization
```
feature_name/
├── presentation/
│   ├── screens/
│   ├── widgets/
│   └── providers/
├── domain/
│   ├── models/
│   └── services/
└── data/
    └── repositories/
```

### Naming Conventions
- Files: `snake_case.dart`
- Classes: `PascalCase`
- Functions/Variables: `camelCase`
- Constants: `CONSTANT_CASE`
- Private: `_leadingUnderscore`

### Testing
- Write unit tests for services
- Write widget tests for UI
- Run: `flutter test`

### Code Review
- Address all comments
- Keep PR focused on one feature
- No breaking changes without discussion

## Acceptable Contributions

✅ **Welcome:**
- Bug fixes
- Performance improvements
- New security features (Phase 2+)
- UI/UX improvements
- Documentation
- Tests

❌ **Not Accepted:**
- Cloud syncing / data collection
- Telemetry / analytics
- Ads or monetization
- Features that compromise privacy

## Questions?

Open an issue or discussion. We're here to help!

Thank you for making ShieldX better! 🛡️
