#!/usr/bin/env bash
# scripts/mysql_dump.sh
# Export a MySQL database (you must have credentials and permission).
# Usage: ./scripts/mysql_dump.sh -h host -u user -p database -o dump.sql

while getopts ":h:u:p:d:o:" opt; do
  case $opt in
    h) HOST="$OPTARG" ;;
    u) USER="$OPTARG" ;;
    p) PASS="$OPTARG" ;;
    d) DB="$OPTARG" ;;
    o) OUT="$OPTARG" ;;
    *) echo "Usage: $0 -h host -u user -p pass -d db -o out.sql"; exit 1 ;;
  esac
done

if [ -z "${HOST:-}" ] || [ -z "${USER:-}" ] || [ -z "${PASS:-}" ] || [ -z "${DB:-}" ] || [ -z "${OUT:-}" ]; then
  echo "Missing parameter. Usage: $0 -h host -u user -p pass -d db -o out.sql"
  exit 1
fi

mysqldump -h "$HOST" -u "$USER" -p"$PASS" "$DB" > "$OUT"
echo "[*] Dump written to $OUT"
