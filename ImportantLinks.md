# Some important links

---

## Defender for Office 365

To bypass Safe Attachment or Safe Link policies a Transport/Mail flow rule must be created. This rule(s) are adding specific headers causing the policies are not processed.

Link: <https://support.knowbe4.com/hc/en-us/articles/115004326408-How-to-Bypass-Safe-Link-and-Safe-Attachments-in-Microsoft-Defender-for-Office-365>

Safe Attachment bypass:

1. Create a new mail flow rule in your Microsoft 365 Exchange admin center.
2. Give the rule a name such as Bypass Safe Attachments.
3. Click more options.
4. From the Apply this rule if… drop-down, select The senders then select IP address is in any of these ranges or exactly matches.
5. Enter our IP addresses. Please see this article for the most up-to-date list of our IP addresses. _(Hint: Other conditions could be used as well.)_
5. From the Do the following… drop-down, select Modify the message properties... and then set a message header.
2. Click the first *Enter text... link and set the message header to: X-MS-Exchange-Organization-SkipSafeAttachmentProcessing
3. Click the second *Enter text... link and set the value to: 1
4. Click Save.

---

## Microsoft Purview

MS documentation of [Auditing Standard/Premium](https://learn.microsoft.com/en-us/purview/audit-solutions-overview).

Key differences between [Audit Standard and Premium](https://learn.microsoft.com/en-us/purview/audit-solutions-overview#comparison-of-key-capabilities).

What could be found in [audit logs](https://learn.microsoft.com/en-us/purview/audit-log-activities)?

---

## Defender for Endpoint

### Configuration in Intune portal
Configuration settings via [Intune](https://endpoint.microsoft.com) _without_ device registration: [MS documentation](https://learn.microsoft.com/en-us/mem/intune/protect/mde-security-integration?pivots=mdssc-ga).

### Device Actions

Some actions on devices:

| Action | Description | Link |
| --- | --- | --- |
| Device Value | Defining a device's value helps you differentiate between asset priorities. The device value is used to incorporate the risk appetite of an individual asset into the Defender Vulnerability Management exposure score calculation. Devices assigned as "high value" will receive more weight. | <https://learn.microsoft.com/en-us/microsoft-365/security/defender-vulnerability-management/tvm-assign-device-value?view=o365-worldwide> |
| Report device inaccuracy | To indicate a false positive | <https://learn.microsoft.com/en-us/microsoft-365/security/defender-vulnerability-management/tvm-security-recommendation?view=o365-worldwide#report-inaccuracy> |
| Exclude | Once a device is excluded, if you go to the device page of an excluded device, you won't be able to see data for discovered vulnerabilities, software inventory or security recommendations. The data also won't show up in vulnerability management pages, related advanced hunting tables and the vulnerable devices report. | <https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/exclude-devices?view=o365-worldwide> |
| Turn on troubleshooting mode | The troubleshooting mode allows you to troubleshoot various Microsoft Defender Antivirus features by enabling them from the device and testing different scenarios, even if they're controlled by the organization policy. | <https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/troubleshooting-mode-scenarios?view=o365-worldwide> |

Other actions on devices: [MS documentation](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/respond-machine-alerts?view=o365-worldwide).

---

## Defender for Cloud

Important sections of [Microsoft Defender for Cloud documentation](https://learn.microsoft.com/en-us/azure/defender-for-cloud/):

Protect your workloads
[Security alerts reference list](https://learn.microsoft.com/en-us/azure/defender-for-cloud/alerts-reference)

Required Roles to use MDC as Admin or Viewer:

- Owner
- Contributer
- Reader
- Azure RBAC Security Administrator
- Azure RBAC Security Reader

Link: https://learn.microsoft.com/en-us/azure/defender-for-cloud/permissions
