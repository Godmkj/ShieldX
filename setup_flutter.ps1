# ShieldX - Flutter Setup Script for Windows (PowerShell)
# Run as Administrator: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  ShieldX Flutter Setup (PowerShell)" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Check if Flutter is installed
Write-Host "[CHECK] Looking for Flutter..." -ForegroundColor Yellow
$flutterInstalled = $null -ne (Get-Command flutter -ErrorAction SilentlyContinue)

if ($flutterInstalled) {
    Write-Host "[OK] Flutter found!" -ForegroundColor Green
    flutter --version
    Write-Host ""
    Write-Host "Ready to test! Run:" -ForegroundColor Cyan
    Write-Host "  cd 'c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx'" -ForegroundColor Green
    Write-Host "  flutter pub get" -ForegroundColor Green
    Write-Host "  flutter run" -ForegroundColor Green
    exit 0
}

Write-Host "[NOT FOUND] Flutter is not installed" -ForegroundColor Red
Write-Host ""
Write-Host "Quick Setup:" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Download Flutter (~500MB):" -ForegroundColor Yellow
Write-Host "   https://flutter.dev/docs/get-started/install/windows" -ForegroundColor Green
Write-Host ""
Write-Host "   OR run this to download automatically:" -ForegroundColor Yellow
$downloadChoice = Read-Host "   Download now? (Y/n)"
if ($downloadChoice -ne 'n') {
    Write-Host "   Downloading Flutter..." -ForegroundColor Cyan
    $downloadUrl = "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.24.3-stable.zip"
    $outputPath = "$env:USERPROFILE\Downloads\flutter.zip"
    try {
        Invoke-WebRequest -Uri $downloadUrl -OutFile $outputPath -UseBasicParsing
        Write-Host "   Downloaded to: $outputPath" -ForegroundColor Green
    } catch {
        Write-Host "   Download failed. Please download manually from:" -ForegroundColor Red
        Write-Host "   $downloadUrl" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "2. Extract to C:\flutter" -ForegroundColor Yellow
Write-Host "   - Create C:\flutter folder" -ForegroundColor Gray
Write-Host "   - Extract the ZIP there" -ForegroundColor Gray
Write-Host ""
Read-Host "Press Enter when done"

Write-Host ""
Write-Host "3. Add Flutter to PATH" -ForegroundColor Yellow
$addPath = Read-Host "   Add to PATH automatically? (Y/n)"
if ($addPath -ne 'n') {
    try {
        $flutterPath = "C:\flutter\bin"
        $dartPath = "C:\flutter\bin\cache\dart-sdk\bin"
        $currentPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
        
        if ($currentPath -notlike "*$flutterPath*") {
            [Environment]::SetEnvironmentVariable(
                "Path",
                "$currentPath;$flutterPath;$dartPath",
                "Machine"
            )
            Write-Host "   [OK] Added to PATH" -ForegroundColor Green
            Write-Host "   [IMPORTANT] Restart PowerShell for changes to take effect" -ForegroundColor Red
        } else {
            Write-Host "   [OK] Already in PATH" -ForegroundColor Green
        }
    } catch {
        Write-Host "   [ERROR] Could not add to PATH. Run PowerShell as Administrator." -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "4. Verify Installation" -ForegroundColor Yellow
Read-Host "Press Enter to check"

flutter --version 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "[SUCCESS] Flutter is ready!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "  1. cd 'c:\Users\hp\Downloads\New folder\antyvirusvs code\shieldx'" -ForegroundColor Green
    Write-Host "  2. flutter pub get" -ForegroundColor Green
    Write-Host "  3. flutter run" -ForegroundColor Green
    Write-Host ""
    Write-Host "For testing on Android/iOS/Web, see TESTING.md" -ForegroundColor Cyan
} else {
    Write-Host "[ERROR] Flutter not found. Check PATH and restart PowerShell" -ForegroundColor Red
    Write-Host "   Run: flutter doctor" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
