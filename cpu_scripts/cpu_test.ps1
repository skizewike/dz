Clear-Host
Write-Host "[SUCCESS] Запуск оптимизированного кода..." -ForegroundColor Green
for ($i=1; $i -le 50; $i++) {
    # Выполняем полезную логику
    Write-Host "Выполнение итерации алгоритма: $i"
    # Уступаем квант времени планировщику ОС. Поток засыпает, переводя ядро в C-state
    Start-Sleep -Milliseconds 50 
}