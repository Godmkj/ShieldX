@echo off
REM ShieldX - Flutter Setup Script for Windows
REM Run this as Administrator

echo.
echo ================================================
echo  ShieldX Flutter Setup Script (Windows)
echo ================================================
echo.

REM Check if Flutter is already installed
echo Checking for Flutter installation...
flutter --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] Flutter is already installed!
    flutter --version
    goto setup_complete
) else (
    echo [NOT FOUND] Flutter not installed.
    goto install_flutter
)

:install_flutter
echo.
echo [STEP 1] Downloading Flutter SDK...
echo This will download ~500MB (takes ~10 minutes)
echo.
echo URL: https://flutter.dev/docs/get-started/install/windows
echo.
echo Option A: Download manually from URL above
echo Option B: Run this command in PowerShell:
echo.
echo   Invoke-WebRequest -Uri "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.24.3-stable.zip" -OutFile "$env:USERPROFILE\Downloads\flutter.zip"
echo.
pause

echo.
echo [STEP 2] Extract to C:\flutter
echo Create C:\flutter and extract the ZIP there
echo (DO NOT extract to Downloads!)
echo.
pause

:add_to_path
echo.
echo [STEP 3] Adding Flutter to System PATH
echo.
echo Option A (GUI):
echo   1. Press Win + X
echo   2. Select "System"
echo   3. Go to "Advanced system settings"
echo   4. Click "Environment Variables..."
echo   5. Under "System variables", select "Path" and click "Edit..."
echo   6. Click "New" and add: C:\flutter\bin
echo   7. Click "New" and add: C:\flutter\bin\cache\dart-sdk\bin
echo   8. Click OK and restart PowerShell
echo.
echo OR
echo.
echo Option B (PowerShell as Admin):
echo   $flutterPath = "C:\flutter\bin"
echo   $dartPath = "C:\flutter\bin\cache\dart-sdk\bin"
echo   $currentPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
echo   [Environment]::SetEnvironmentVariable("Path", "$currentPath;$flutterPath;$dartPath", "Machine")
echo.
pause

echo.
echo [STEP 4] Verify Installation
echo Restart PowerShell and run:
echo   flutter --version
echo   flutter doctor
echo.
pause

:setup_complete
echo.
echo ================================================
echo  Setup Complete!
echo ================================================
echo.
echo Next steps:
echo   1. Go to your ShieldX folder:
echo      cd "c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx"
echo.
echo   2. Get dependencies:
echo      flutter pub get
echo.
echo   3. Run the app:
echo      flutter run
echo.
echo See TESTING.md for detailed testing instructions.
echo.
pause
