 #!/bin/bash 


LOG="${1:-$HOME/Mini-SOC-Lab/logs/auth_day1.txt}"
THRESHOLD="${THRESHOLD:-5}"
if [ ! -r "$LOG" ]; then
echo "ERROR: Cannot read log file: $LOG"
exit 1
fi

COUNT=$( grep -icE 'authentication failure|failed password|password check failed' "$LOG")
COUNT=${COUNT:-0}
echo "Scan time: $(date '+%Y-%m-%d %H:%M:%S')"
echo " === MINI SOC AUTHENTICATION DETECTION === "
echo "Log file: $LOG"
echo "Matching authentication events: $COUNT"
echo "Alert threshold: $THRESHOLD"
if [ "$COUNT" -ge "$THRESHOLD" ]; then
  echo "ALERT: Repeated authentication failures detected"
  echo "Severcity: MEDIUM"
  echo "Status: Investigation required"
else
  echo "No alert: Below threshold"
fi
