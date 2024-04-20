#!/usr/bin/env pwsh

New-ModuleManifest -Path {{ cookiecutter.module_name }}.psd1 `
  -ModuleVersion "{{ cookiecutter.module_version }}" `
  -Author "{{ cookiecutter.author_name }}" `
  -Description "{{ cookiecutter.module_description }}"
