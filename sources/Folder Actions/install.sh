#!/bin/sh

# print-to-downloads.sh
# configure RWTS PDFwriter to move PDFs to ~/Downloads

if [ ! -d "/var/spool/pdfwriter" ]; then
    sudo mkdir /var/spool/pdfwriter
fi

osascript /Library/Printers/RWTS/PDFwriter/"Folder Actions"/Install.scpt