#!/bin/bash

OUT="$HOME/Mini-SOC-Lab/reports/incident_report.txt"

cat > "$OUT" <<'EOF'
 MINI SOC - INCIDENT REPORT

Alert: Repeated authentication failures
Detection severity: Medium
Matching log entries: 12
Threshold:5
Affected account: deepak

Findings:
Authentication failures were detected in the saved Ubuntu authentication logs.

Assessment: Malicious activity has not been confirmed.

Response: Evidence and timeline documented. Further investigation recommended.

Conclusion: The detection rule generated an alert when matching authentication  events exceeded the configured threshold.
EOF

echo "Incident report created: $OUT"
