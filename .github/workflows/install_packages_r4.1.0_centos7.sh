#!/bin/sh

# Get software 
wget -nv https://github.com/Open-Systems-Pharmacology/rClr/releases/download/v$1/R4_rClr_$1_CentOS7.tar.gz -P /tmp_setup/
wget -nv https://github.com/Open-Systems-Pharmacology/TLF-Library/releases/download/v$2/tlf_$2.tar.gz -P /tmp_setup/
wget -nv https://github.com/Open-Systems-Pharmacology/OSPSuite-R/releases/download/v$3/ospsuite_$3_centOS7.tar.gz -P /tmp_setup/

# Install packages
R CMD INSTALL /tmp_setup/R4_rClr_$1_CentOS7.tar.gz && \
R CMD INSTALL /tmp_setup/tlf_$2.tar.gz --install-tests && \
R CMD INSTALL /tmp_setup/ospsuite_$3_centOS7.tar.gz --install-tests
