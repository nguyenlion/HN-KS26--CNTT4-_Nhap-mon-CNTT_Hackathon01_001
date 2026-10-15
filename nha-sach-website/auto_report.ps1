# Script: auto_report.ps1
# Tac gia: HIEU
# Ngay tao: 15/10/2026
 
Write-Host "Dang loc log..."
 
"=== BAO CAO LOI ===" > ./logs/auto_report.txt
Get-Content ./logs/store.log | Select-String "ERROR" >> ./logs/auto_report.tx
 
Write-Host "Hoan thanh!"