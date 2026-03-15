#!/bin/bash

IMG_DIR="Photos"
DOC_DIR="Documents"
TXT_DIR="PlainTexts"

mkdir -p $IMG_DIR $DOC_DIR $TXT_DIR

echo "--- Start ---"

if ls *.jpg *.png *.jpeg >/dev/null 2>&1; then
    mv *.jpg *.png *.jpeg $IMG_DIR/
    echo "✅ The images were transferred to $IMG_DIR."
else
    echo "ℹ️ No new images found."
fi

if ls *.pdf *.docx >/dev/null 2>&1; then
    mv *.pdf *.docx $DOC_DIR/
    echo "✅ The documents were transferred to $DOC_DIR."
else
    echo "ℹ️ No new documents found."
fi

echo "--- Finished  ---"
