#!/bin/bash
# Script: file_organizer.sh
# Purpose: Organize files in Downloads by extension

TARGET_DIR="$HOME/Downloads"

cd "$TARGET_DIR" || exit

for file in *; do
    # Eğer dosya değilse atla
    [ -f "$file" ] || continue

    # Uzantıyı al
    extension="${file##*.}"

    # Uzantısı yoksa skip
    [ "$extension" == "$file" ] && continue

    # Klasör oluştur
    mkdir -p "$extension"

    # Dosyayı taşı
    mv "$file" "$extension/"

    echo "Moved $file → $extension/"
done

echo "File organization completed."

