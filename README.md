# Home SOC and Incident Response Lab

#Overview
A practical cybersecurity project using Ubuntu to detect authentication failures,investigate alerts,capture network traffic and document findings.

#Tools
 
* Ubuntu linux
* Bash scripting
* grep
* tcpdump
* VirtualBox

# Key Results
 
* Detected 12 matching authentication log entries.
* Configured an alert threshold of 5
* Created an incident timeline and severity assessment.
* Documented response actions and potential MITRE ATTACK mapping.
* Captured network traffic for basic analysis.

# Conclusion
 The alert required further investigation. Malicious activity was not confirmed. 
 This educational lab demonstrates basic SOC monitoring and incident response. 


## Investigation Workflow

1. Collect Ubuntu authentication log evidence.
2. Run a Bash detection script to count matching events.
3. Compare the count against a configurable threshold.
4. Investigate the alert and document a timeline.
5. Assign a provisional severity and map potencial MITRE ATTACK behaviour.
6. Capture network packets using tcpdump.
7. Document findings, response recommendations, and limitations.

# Detection Validation

Four controlled tests were performed:
 * Six matching entries: alert generated.
 * Two matching entries: no alert.
 * Unrelated system messages: no alert.
 * Missing log file: clear error displayed.

    All four tests passed.

#Limitations

* This is an educational single machine SOC Lab.
* Matching log entries do not necessarily represent unique login attempts.
* The alert does not prove malicious activity or a confirmed brute force attack.
* Network packet capture provides basic visibility, not full network threat detection.
* No automated containment was performed.
