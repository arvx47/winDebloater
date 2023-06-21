Write-Output "Disabling Core Parking on current PowerPlan Ultimate Performance..."
powercfg -attributes SUB_PROCESSOR CPMINCORES -ATTRIB_HIDE | Out-Null
Powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100 | Out-Null
Powercfg -setactive scheme_current | Out-Null