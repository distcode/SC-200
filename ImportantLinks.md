# Some important links

## Defender for Office 365

To bypass Safe Attachment or Safe Link policies a Transport/Mail flow rule must be created. This rule(s) are adding specific headers causing the policies are not processed.

Link: https://support.knowbe4.com/hc/en-us/articles/115004326408-How-to-Bypass-Safe-Link-and-Safe-Attachments-in-Microsoft-Defender-for-Office-365

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

## Defender for Cloud

Required Roles to use MDC as Admin or Viewer:

- Owner
- Contributer
- Reader
- Azure RBAC Security Administrator
- Azure RBAC Security Reader

Link: https://learn.microsoft.com/en-us/azure/defender-for-cloud/permissions

