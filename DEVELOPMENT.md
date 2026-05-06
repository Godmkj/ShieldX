# ShieldX Development Guide

## Getting Started

### 1. Install Flutter
- Download from https://flutter.dev/docs/get-started/install
- Add Flutter to PATH
- Verify: `flutter doctor`

### 2. Clone & Setup
```bash
cd shieldx
flutter pub get
```

### 3. Run
```bash
# Development
flutter run

# With specific device
flutter run -d <device_id>

# Release
flutter run --release
```

## Project Structure

### Core Layer
- **theme/**: Cyberpunk UI design system, colors, typography
- **router/**: GoRouter navigation, route configuration
- **providers/**: Riverpod global state providers
- **constants/**: App-wide strings, colors, dimensions
- **utils/**: Helper functions, crypto, file utilities

### Features Layer (MVVM)
Each feature has:
- **presentation/**: UI screens and widgets
- **domain/**: Business logic and models
- **data/**: Database and API access

### Services Layer
- **scan_engine.dart**: Virus/malware detection
- **spyware_detector.dart**: Spyware and govt malware detection
- **network_monitor.dart**: Network connections and firewall
- **signature_db.dart**: Offline threat signatures
- **notification_service.dart**: Alert notifications
- **update_service.dart**: Background signature updates

## State Management (Riverpod)

### Provider Types
```dart
// Simple state
final counterProvider = StateProvider((ref) => 0);

// Computed value
final doubleCountProvider = Provider((ref) {
  final count = ref.watch(counterProvider);
  return count * 2;
});

// Async operation
final userProvider = FutureProvider((ref) async {
  return await fetchUser();
});

// State notifier
final todoListProvider = StateNotifierProvider<TodoList, List<Todo>>((ref) {
  return TodoList([]);
});
```

### Usage
```dart
class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    
    return GestureDetector(
      onTap: () => ref.read(counterProvider.notifier).state++,
      child: Text('Count: $count'),
    );
  }
}
```

## UI Design System

### Colors
- **Background**: `#050A14` (deep space black)
- **Surface**: `#0D1117`
- **Primary**: `#00F5FF` (electric cyan)
- **Warning**: `#FFB800` (neon amber)
- **Danger**: `#FF2D55` (plasma red)
- **Success**: `#00FF88` (matrix green)

### Typography
- **Display**: `JetBrains Mono` (monospace data)
- **Body**: `Inter` (readable prose)

### Components
- Cards with glassmorphism effect
- Shield animations (heartbeat when safe, pulsing when threat)
- Radar sweep on threat detection
- Particle explosion animations

## Database (Hive)

### Setup
```dart
import 'package:hive/hive.dart';

// Part of main.dart
Future<void> initHive() async {
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  
  // Register adapters
  Hive.registerAdapter(UserAdapter());
  
  // Open boxes
  await Hive.openBox('settings');
  await Hive.openBox('threats');
}
```

### Usage
```dart
final box = Hive.box('settings');
box.put('darkMode', true);
final isDarkMode = box.get('darkMode');
```

## Testing

### Unit Tests
```bash
flutter test
```

### Widget Tests
```dart
testWidgets('Dashboard displays title', (WidgetTester tester) async {
  await tester.pumpWidget(const ShieldXApp());
  expect(find.text('Security Status'), findsOneWidget);
});
```

## Building for Platforms

### Android
```bash
flutter build apk
flutter build appbundle  # For Play Store
```

### iOS
```bash
flutter build ios
```

### Windows
```bash
flutter build windows
```

### Linux
```bash
flutter build linux
```

### macOS
```bash
flutter build macos
```

### Web
```bash
flutter build web
```

## Debugging

### Debug Mode
```bash
flutter run
```

### Release Mode
```bash
flutter run --release
```

### DevTools
```bash
flutter pub global activate devtools
devtools
```

## Code Standards

### Dart Lint Rules
```bash
flutter analyze
dart format lib/
```

### File Organization
- Keep files under 300 lines
- One class per file (usually)
- Group related functionality
- Use meaningful imports

### Naming
- Classes: `PascalCase`
- Files: `snake_case.dart`
- Functions/Variables: `camelCase`
- Constants: `kPascalCase`
- Private: `_leadingUnderscore`

### Documentation
```dart
/// Brief description
/// 
/// Longer description if needed
class MyClass {
  /// Doc comment
  void myMethod() {}
}
```

## Performance Tips

### Use Isolates for Heavy Work
```dart
final result = await Isolate.run(() => expensiveComputation());
```

### Lazy Loading
```dart
final provider = FutureProvider.autoDispose((ref) async {
  return await fetchData();
});
```

### Cache Results
```dart
final cachedProvider = Provider.autoDispose((ref) {
  final data = ref.watch(fetchDataProvider);
  return data.maybeWhen(
    data: (values) => values,
    orElse: () => [],
  );
});
```

## Common Issues

### Flutter Doctor Issues
```bash
flutter doctor -v
```

### Pub Get Fails
```bash
flutter clean
flutter pub get
```

### Build Issues
```bash
flutter clean
flutter pub clean
flutter pub get
flutter run
```

---

For more info, see the [README.md](README.md) and [CONTRIBUTING.md](CONTRIBUTING.md).
