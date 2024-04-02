# Microsoft Sentinel Playbook permissions

:exclamation: To run playbooks successfully in Microsoft Sentinel:
'You must have owner permissions on any resource group to which you want to grant Microsoft Sentinel permissions, and you must have the Logic App Contributor role on any resource group containing playbooks you want to run.

Also, refer to this <https://learn.microsoft.com/en-us/azure/sentinel/roles> Roles and permissions required for Microsoft Sentinel.

'Other roles and permissions

...

Automate responses to threats with playbooks

Microsoft Sentinel uses playbooks for automated threat response. Playbooks are built on Azure Logic Apps, and are a separate Azure resource. For specific members of your security operations team, you might want to assign the ability to use Logic Apps for Security Orchestration, Automation, and Response (SOAR) operations. You can use the Microsoft Sentinel Playbook Operator role to assign explicit, limited permission for running playbooks, and the Logic App Contributor role to create and edit playbooks.

Give Microsoft Sentinel permissions to run playbooks

Microsoft Sentinel uses a special service account[^1] to run incident-trigger playbooks manually or to call them from automation rules. The use of this account (as opposed to your user account) increases the security level of the service.

For an automation rule to run a playbook, this account must be granted explicit permissions to the resource group where the playbook resides. At that point, any automation rule can run any playbook in that resource group. To grant these permissions to this service account, your account must have Owner permissions to the resource groups containing the playbooks.

...'



[^1]: Azure Security Insights
