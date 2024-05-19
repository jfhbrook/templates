#!/usr/bin/env pwsh

New-ModuleManifest -Path {{ cookiecutter.component_name }}.psd1 `
  -RootModule "{{ cookiecutter.component_name }}.psm1" `
  -ModuleVersion "{{ cookiecutter.component_version }}" `
  -Author "{{ cookiecutter.author_name }}" `
  -Description "{{ cookiecutter.component_description }}" `
  -FunctionsToExport @("Get-Command")
