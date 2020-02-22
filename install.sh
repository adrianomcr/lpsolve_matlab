#!/bin/bash

echo ""
tput setaf 3; echo -e "Intslling lpsolve along Matlab ..."; tput sgr0

BASEDIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

success_flag=0


{
cp $BASEDIR/liblpsolve55.so /usr/lib
echo -e "Coppiyng liblpsolve55.so to /usr/lib ..."
((success_flag = success_flag + 1))
} || {
tput setaf 1; echo -e "Fail to copy liblpsolve55.so to /usr/lib"; tput sgr0
}


{
cp $BASEDIR/liblpsolve55.so /usr/lib64
echo -e "Coppiyng liblpsolve55.so to /usr/lib64 ..."
((success_flag = success_flag + 1))
} || {
tput setaf 1; echo -e "Fail to copy liblpsolve55.so to /usr/lib64"; tput sgr0
}

# echo "success_flag = $success_flag"

# if [$success_flag -eq (2)]
if [ $success_flag -eq 2 ]
then
	tput setaf 2; echo -e "------ ------ ------"; tput sgr0
	tput setaf 2; echo -e "------ Finish ------"; tput sgr0
	tput setaf 2; echo -e "------ ------ ------"; tput sgr0
	tput setaf 3; echo -e "Now open MATLAB to proceed with the installation"; tput sgr0
	echo -e "You may need to run Matlab with sudo: 'sudo matlab'"; tput sgr0

	echo ""
	echo -e "On the Command Window type:"
	tput setaf 6; echo -e "cd $BASEDIR/lp_solve_5.5/extra/MATLAB/lpsolve/"; tput sgr0
	tput setaf 6; echo -e "Makefile"; tput sgr0
	echo ""
	echo -e "After that type the following on the Command line:"
	tput setaf 6; echo -e "addpath('$BASEDIR/lp_solve_5.5/extra/MATLAB/lpsolve')"; tput sgr0
	tput setaf 6; echo -e "savepath"; tput sgr0
else
	tput setaf 1; echo -e "Installation failed"; tput sgr0
fi


