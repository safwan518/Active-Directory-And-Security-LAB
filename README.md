# Active Directory Administration & Security Lab

## Overview
A hands-on IT lab built with Windows Server 2022, Active Directory Domain Services, Group Policy, and a Windows 10 domain client in VirtualBox.

## Objectives
- Deploy an Active Directory domain.
- Join a Windows client to the domain.
- Organize users and security groups using Organizational Units (OUs).
- Apply Group Policy restrictions.
- Configure domain account lockout settings.
- Audit and investigate Kerberos authentication failures.

## Lab Environment
- Server OS:** Windows Server 2022 Standard Evaluation
- Client OS:** Windows 10
- Virtualization:** Oracle VirtualBox
- Domain:** corp.local
- Server IP:** 192.168.100.10
- Client IP:** 192.168.100.20

## Implemented Tasks
1. Configured the Active Directory domain `corp.local`.
2. Joined a Windows 10 client to the domain.
3. Created departmental OUs for IT, HR, and Finance.
4. Created security groups: `IT-Staff`, `HR-Staff`, and `Finance-Staff`.
5. Created a domain user and assigned group membership.
6. Applied a Group Policy restricting access to Control Panel.
7. Configured the domain account lockout threshold to five failed attempts.
8. Enabled Kerberos authentication failure auditing.
9. Investigated Windows Security Event ID 4771 using PowerShell.

## Security Event I nvestigation
Event ID:4771 — Kerberos Pre-Authentication Failed

- Account:Safwan.IT
- Client IP:192.168.100.20
- Failure Code:0x18

The event recorded a Kerberos authentication failure associated with the domain user and client workstation. The failure code was consistent with incorrect pre-authentication credentials.

## Tools and Technologies
Windows Server 2022, Active Directory, DNS, Group Policy, PowerShell, Windows Security Logs, Kerberos, VirtualBox.

## Future Improvements
- Configure and verify Event ID 4625 auditing on the Windows client.
- Forward security events to Wazuh.
- Create alerts for repeated authentication failures.
- Document additional troubleshooting scenarios.

## Disclaimer
This project was conducted in an isolated virtual lab for educational purposes. IP addresses and domain names refer to the lab environment.
