
<#
    This script shows how to enable ASR rules via PowerShell.

    The parameter AttachSurfaceRecductionRules_Action could be set to: AuditMode, Warn, Enabled, Disabled, NotConfigured

    Via PowerShell no other settings - like App isolation - is supported. For that a MDM (Intune) is required.

    Reference: https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide
#>
# Block abuse of exploited vulnerable signed drivers
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 56a863a9-875e-4185-98a7-b882c64b5ce5

# Block Adobe Reader from creating child processes	
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c

# Block all Office applications from creating child processes 
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids d4f940ab-401b-4efc-aadc-ad5f3c50688a

# Block credential stealing from the Windows local security authority subsystem (lsass.exe)	
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2

# Block executable content from email client and webmail
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids be9ba2d9-53ea-4cdc-84e5-9b1eeee46550

# Block executable files from running unless they meet a prevalence, age, or trusted list criterion
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 01443614-cd74-433a-b99e-2ecdc07bfc25

# Block execution of potentially obfuscated scripts
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 5beb7efe-fd9a-4556-801d-275e5ffc04cc

# Block JavaScript or VBScript from launching downloaded executable content
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids d3e037e1-3eb8-44c8-a917-57927947596d

# Block Office applications from creating executable content
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 3b576869-a4ec-4529-8536-b80a7769e899

# Block Office applications from injecting code into other processes
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84

# Block Office communication application from creating child processes
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 26190899-1602-49e8-8b27-eb1d0a1ce869

# Block persistence through WMI event subscription
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids e6db77e5-3df2-4cf1-b95a-636979351e5b

# * File and folder exclusions not supported.

# Block process creations originating from PSExec and WMI commands
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids d1e49aac-8f56-4280-b9ba-993a6d77406c

# Block untrusted and unsigned processes that run from USB
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4

# Block Win32 API calls from Office macros
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids 92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b

# Use advanced protection against ransomware
Add-MpPreference -AttackSurfaceReductionRules_Actions AuditMode -AttackSurfaceReductionRules_Ids c1db55ab-c21a-4637-bb3f-a12568109d35