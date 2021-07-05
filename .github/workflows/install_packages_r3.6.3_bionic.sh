#!/bin/sh

# Get software 
wget -nv https://github.com/Open-Systems-Pharmacology/rClr/releases/download/v$1-R3/R3_rClr_$1_Ubuntu18.tar.gz -P /tmp_setup/
wget -nv https://github.com/Open-Systems-Pharmacology/TLF-Library/releases/download/v$2/tlf_$2.tar.gz -P /tmp_setup/
wget -nv https://github.com/Open-Systems-Pharmacology/OSPSuite-R/releases/download/v$3/ospsuite_$3_ubuntu18.tar.gz -P /tmp_setup/

# Install packages
R CMD INSTALL /tmp_setup/R3_rClr_$1_Ubuntu18.tar.gz && \
R CMD INSTALL /tmp_setup/tlf_$2.tar.gz --install-tests && \
R CMD INSTALL /tmp_setup/ospsuite_$3_ubuntu18.tar.gz --install-tests
