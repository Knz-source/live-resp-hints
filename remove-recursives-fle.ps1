#Lucca Magalhães
#Remove-File with live-response utility, load on lib and voilà, have fun.
#25/01/2023
#0 x 7 3 5 9 
param(
    [String] $FilePath = $args[0]
)

if ($FilePath -eq "") {
    Write-Host "Caminho nao especificado"
    exit 1
}

if (Test-Path $FilePath) {
    Remove-Item -path $FilePath -Recurse -Force
    Write-Host "O Processo de remoçao do arquivo $FilePath foi executado. Resultado: $LASTEXITCODE"
} else {
    Write-Host "Arquivo $FilePath nao encontrado"
}
