#!/bin/bash
string="ILDS"

if [ "$1" == "ILDS" ]
then
	cd ../Solver/
	./run.sh 10000 <../real-students.txt >../ILDS.output
	cd ../../Validator
	./run.sh ILDS
else	
	cd ../sLocal-Search/
	node slocalsearch.js 10 ../Local.output <../real-students.txt
	cd ../../Validator
	./run.sh Local
fi
