Clear-Host
Write-Host "[WARNING] Запуск неоптимизированного цикла Busy-waiting..." -ForegroundColor Red
$flag = $true
while ($flag) {
    # Пустой цикл без задержек. Сжигает 100% выделенного ядра CPU
}