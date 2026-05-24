param(
  [switch]$SkipStata,
  [switch]$SkipPaper
)

$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$EnginePaths = Join-Path $PSScriptRoot "engine_paths.local.ps1"

if (Test-Path $EnginePaths) {
  . $EnginePaths
}

if (-not $SkipStata) {
  if (-not $StataExe -or -not (Test-Path $StataExe)) {
    Write-Host "Stata path is not configured. Copy scripts\engine_paths.example.ps1 to scripts\engine_paths.local.ps1 and edit StataExe."
  }
  else {
    $env:PROJECT_ROOT = $ProjectRoot
    $MainDo = Join-Path $ProjectRoot "03_code\stata\main.do"
    $StataProcess = Start-Process `
      -FilePath $StataExe `
      -ArgumentList @("/e", "do", "`"$MainDo`"") `
      -WorkingDirectory $ProjectRoot `
      -WindowStyle Hidden `
      -Wait `
      -PassThru

    if ($StataProcess.ExitCode -ne 0 -and $null -ne $StataProcess.ExitCode) {
      throw "Stata exited with code $($StataProcess.ExitCode). Check 04_results\logs\stata_main.log."
    }

    $DefaultStataLog = Join-Path $ProjectRoot "main.log"
    if (Test-Path $DefaultStataLog) {
      Remove-Item -LiteralPath $DefaultStataLog -Force
    }
  }
}

if (-not $SkipPaper) {
  & (Join-Path $PSScriptRoot "build_paper.ps1")
}
