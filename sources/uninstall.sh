#!/bin/sh

# uninstall.sh
# unistall RWTS PDFwriter
#
# Created by Simone Karin Lehmann on 30.08.10.
# Copyright 2010 Simone Karin Lehmann. All rights reserved.
# Modified 2016 Rodney I. Yager

lpadmin -x pdfwriter

sudo rm /Library/Scripts/"Folder Action Scripts"/"PDFwriter - setup new user.scpt" 2>/dev/null
sudo rm /Library/Scripts/"Folder Action Scripts"/"PDFwriter - move pdfs to downloads.scpt" 2>/dev/null
osascript /Library/Printers/RWTS/PDFwriter/"Folder Actions"/Uninstall.scpt
sudo rm -rf /Library/Printers/RWTS/PDFwriter/"Folder Actions"

sudo rm /Library/Printers/RWTS/PDFwriter/*
sudo rm /usr/libexec/cups/backend/pdfwriter
sudo rm /Library/Printers/PPDs/Contents/Resources/RWTS\ PDFwriter.gz


sudo rmdir /Library/Printers/RWTS/PDFwriter
sudo rmdir /Library/Printers/RWTS

sudo pkgutil --forget au.rwts.pdfwriter 
