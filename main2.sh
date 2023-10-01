#!/bin/bash

# Variabel
path=./hdfs/data/data1
name_of_directory=data2

pathdirectory=$(dirname "$path")/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=./local/data/market
target_dir=$pathdirectory


# Memeriksa direktori
if [ -d "$pathdirectory" ]; then
    echo "There is $name_of_directory Directory Exists!"
    # Memeriksa file sumber ada
    if [ -f "$source_dir/$filename_excel" ]; then
        cp "$source_dir/$filename_excel" "$pathdirectory/$filename_excel"
        echo "[$(date)] File $filename_excel File Moved Successfully" >> "$pathdirectory/log.txt"
    else
        echo "File $filename_excel tidak ditemukan di $source_dir."
    fi   
else
    # Pesan direktori belum ada
    echo "$name_of_directory Directory Not Exists!"
    # Buat direktori
    mkdir -p "$pathdirectory"
fi
