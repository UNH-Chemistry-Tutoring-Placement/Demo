#!/bin/bash
string="ILDS"

if [ "$1" == "ILDS" ]
then
	cd ../Solver/
	./run.sh 10000 < ../FileFormats/complete-input-2 > ../Demo/ILDS.output
	cd ../Validator
	./run.sh ILDS
else	
	cd ../sLocal-Search/
	node slocalsearch.js 10 ../Demo/Local.output <../FileFormats/complete-input-2
	cd ../Validator
	./run.sh Local
fi
