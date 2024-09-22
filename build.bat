@echo off

:: Compile for Windows (64-bit)
echo Compiling for Windows (64-bit)...
set CGO_ENABLED=0
set GOOS=windows
set GOARCH=amd64
go build -ldflags="-s -w" -tags "full" -o example/trojan-go_windows.exe
if %errorlevel% neq 0 (
    echo Compilation for Windows failed!
    exit /b %errorlevel%
)
echo Compilation for Windows completed successfully.

:: Compile for Apple Silicon (macOS ARM64)
echo Compiling for macOS (ARM64)...
set CGO_ENABLED=0
set GOOS=darwin
set GOARCH=arm64
go build -ldflags="-s -w" -tags "full" -o example/trojan-go_macos
if %errorlevel% neq 0 (
    echo Compilation for macOS failed!
    exit /b %errorlevel%
)
echo Compilation for macOS completed successfully.

:: Compile for Linux (64-bit)
echo Compiling for Linux (64-bit)...
set CGO_ENABLED=0
set GOOS=linux
set GOARCH=amd64
go build -ldflags="-s -w" -tags "full" -o example/trojan-go_linux
if %errorlevel% neq 0 (
    echo Compilation for Linux failed!
    exit /b %errorlevel%
)
echo Compilation for Linux completed successfully.

pause
