#!/bin/bash
LOG_FILE="organize.log"

IMG_DIR="Photos"
DOC_DIR="Documents"
TXT_DIR="PlainTexts"

mkdir -p $IMG_DIR $DOC_DIR $TXT_DIR

echo "--- Start ---"  $LOG_FILE
echo "Execution Date: $(date)">> $LOG_FILE

echo "Starting organization..."

if ls *.jpg *.png *.jpeg >/dev/null 2>&1; then
    mv *.jpg *.png *.jpeg $IMG_DIR/
    echo "✅ The images were transferred to $IMG_DIR." >> $LOG_FILE
else
    echo "ℹ️ No new images found." >> $LOG_FILE
fi

if ls *.pdf *.docx >/dev/null 2>&1; then
    mv *.pdf *.docx Documents/
    echo "[$(date +%H:%M:%S)]✅ The documents were transferred to Documents/" >> $LOG_FILE
else
    echo "[$(date +%H:%M:%S)]ℹ️ No new documents found." >> $LOG_FILE
fi

echo "Done! Check $LOG_FILE for details"
echo "--- Finished  ---"
