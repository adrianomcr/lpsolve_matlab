#!/bin/bash

echo ""
tput setaf 3; echo -e "Intslling lpsolve along Matlab ..."; tput sgr0

#loc=exp_$1
#mkdir -p $loc/sensor_data
cp .../lpsolve_matlab/liblpsolve55.so /usr/lib
cp .../lpsolve_matlab/liblpsolve55.so /usr/lib64


tput setaf 2; echo -e "Finish"; tput sgr0
tput setaf 2; echo -e "Open MATLAB to proceed with the installation"; tput sgr0




