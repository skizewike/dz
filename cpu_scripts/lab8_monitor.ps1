# Мониторинг частоты ЦП для ЛР8.
# Win32_Processor.CurrentClockSpeed на моем i7-9700K всегда отдает 3600 (базовая частота),
# поэтому реальную частоту считаю через счетчик "% Processor Performance":
# реальная частота = базовая * процент / 100.
Write-Host ("{0,-10} {1,18} {2,14} {3,8} {4,7}" -f 'Время', 'CurrentClockSpeed', 'MaxClockSpeed', 'RealMHz', 'ЦП %')
while ($true) {
    $cpu  = Get-CimInstance Win32_Processor
    $pi   = Get-CimInstance Win32_PerfFormattedData_Counters_ProcessorInformation -Filter "Name='_Total'"
    $real = [int]($cpu.MaxClockSpeed * $pi.PercentProcessorPerformance / 100)
    Write-Host ("{0,-10} {1,18} {2,14} {3,8} {4,7}" -f (Get-Date -Format 'HH:mm:ss'), $cpu.CurrentClockSpeed, $cpu.MaxClockSpeed, $real, $pi.PercentProcessorTime)
    Start-Sleep -Seconds 2
}
