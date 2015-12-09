#!/bin/bash
string="ILDS"

if [ "$1" == "ILDS" ]
then
	cd ../Solver/
	./run.sh 10000 < ../FileFormats/add_times > ../Demo/ILDS.output
	cd ../Validator
	./run.sh ILDS
else	
	cd ../sLocal-Search/
	node slocalsearch.js 10 ../Demo/Local.output <../FileFormats/add_times
	cd ../Validator
	./run.sh Local
fi
