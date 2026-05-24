param(
  [string]$TexRoot = "05_paper\main.tex",
  [string]$OutputDir = "output",
  [switch]$Clean
)

$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$MiKTeXBin = "D:\application\miktex\miktex\bin\x64"
$XeLaTeX = Join-Path $MiKTeXBin "xelatex.exe"

if (-not (Test-Path $XeLaTeX)) {
  $XeLaTeX = "xelatex"
}

$TexPath = Resolve-Path (Join-Path $ProjectRoot $TexRoot)
$TexDir = Split-Path -Parent $TexPath
$TexFile = Split-Path -Leaf $TexPath
$OutputPath = Join-Path $TexDir $OutputDir

New-Item -ItemType Directory -Path $OutputPath -Force | Out-Null

Push-Location $TexDir
try {
  & $XeLaTeX -interaction=nonstopmode -halt-on-error "-output-directory=$OutputPath" $TexFile
  & $XeLaTeX -interaction=nonstopmode -halt-on-error "-output-directory=$OutputPath" $TexFile

  if ($Clean) {
    $base = [System.IO.Path]::GetFileNameWithoutExtension($TexFile)
    $patterns = @("*.aux", "*.log", "*.out", "*.toc", "*.lof", "*.lot", "*.fls", "*.fdb_latexmk", "*.synctex.gz")
    foreach ($pattern in $patterns) {
      Get-ChildItem -Path $OutputPath -Filter $pattern -File -ErrorAction SilentlyContinue |
        Where-Object { $_.BaseName -eq $base -or $_.Name -like "*.aux" } |
        Remove-Item -Force
    }
  }
}
finally {
  Pop-Location
}
