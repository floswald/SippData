

#!/bin/bash

# bash script to 
# 1) setup the folder structure for SIPP 2008 panel and
# 2) download all raw data, do files and dct files from NBER


echo ""
echo "downloading data from NBER"
echo "=========================="
echo ""

cd ~/datasets/SIPP
year=2008
mkdir -p ${year}
cd ${year}
mkdir -p doc
mkdir -p do_NBER	# create folder for NBER do files. I'll change those
mkdir -p dta
mkdir -p dat
mkdir -p out

# download 2004 .do and .dct files for all core and topical modules


cd do_NBER
for file in sippl08puw sippp08putm

do

	for (( ix=1; ix<13; ix++ ))
	do
		if [[ -e ${file}${ix}.do  ]];
		then
			echo "file ${file}${ix}.do exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.do"
			wget --no-verbose http://www.nber.org/sipp/${year}/${file}${ix}.do
		fi
		if [[ -e ${file}${ix}.dct ]];
		then
			echo "file ${file}${ix}.dct exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.dct"
			wget  --no-verbose http://www.nber.org/sipp/${year}/${file}${ix}.dct
		fi
	done

done

			
echo ""
echo "downloading raw data. will take a while."
echo "========================================"
echo ""


cd ..
cd dat

for file in l08puw p08putm

do

	for (( ix=1; ix<=13; ix++ ))
	do
		if [[ -e ${file}${ix}.dat ]];
		then
			echo "file ${file}${ix}.* exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.zip"
			wget -P ~/datasets/SIPP/2008/raw/ http://www.nber.org/sipp/2008/${file}${ix}.zip
			unzip ${file}${ix}.zip
			rm ${file}${ix}.zip
			echo "unzipped and deleted ${file}${ix}.zip"
			echo "done with ${file}${ix}.dat"
		fi
	done

done


echo "program end."

