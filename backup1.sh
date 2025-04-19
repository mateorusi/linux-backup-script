# [TASK 1]
targetDirectory="/etc"
destinationDirectory="$HOME/backups"
# [TASK 2]
echo "Target Directory: $targetDirectory"
echo "Destination Directory: $destinationDirectory"
# [TASK 3]
currentTS=$(date +%s)
# [TASK 4]
backupFileName="backup-$currentTS.tar.gz"
# [TASK 5]
origAbsPath=$(realpath "$targetDirectory")
# [TASK 6]
destAbsPath=$(realpath "$destinationDirectory")
# [TASK 7]
cd "$targetDirectory" || { echo "Failed to change directory"; exit 1; }
# [TASK 8]
yesterdayTS=$((currentTS - 86400))
# [TASK 9]
allFiles=$(find . -type f)
# [TASK 10]
if [ "$fileTS" -ge "$yesterdayTS" ]; then
# [TASK 11]
toBackup+=("$file")
# [TASK 12]
tar -czf "$backupFileName" "${toBackup[@]}"
# [TASK 13]
mv "$backupFileName" "$destAbsPath"

