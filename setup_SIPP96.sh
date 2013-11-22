

#!/bin/bash

# bash script to 
# 1) setup the folder structure for SIPP ${year} panel and
# 2) download all raw data, do files and dct files from NBER


echo ""
echo "downloading 1996 data from NBER"
echo "==============================="
echo ""

dest=~/datasets/SIPP
cd $dest

year=1996
yr=96


mkdir -p ${year}
cd ${year}
mkdir -p doc
mkdir -p do_NBER	# create folder for NBER do files. I'll change those
mkdir -p dct    	
mkdir -p dta
mkdir -p dat
mkdir -p out

# download ${year} .do and .dct files for all core and topical modules


cd do_NBER

for file in sip96w sip96t

do

	for (( ix=1; ix<12; ix++ ))
	do
		if [[ -e ${file}${ix}.do  ]];
		then
			echo "file ${file}${ix}.do exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.do"
			wget --no-verbose -P ${dest}/${year}/do_NBER http://www.nber.org/sipp/${year}/${file}${ix}.do
		fi
		if [[ -e ../dct/${file}${ix}.dct ]];
		then
			echo "file ${file}${ix}.dct exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.dct"
			wget --no-verbose -P ${dest}/${year}/dct http://www.nber.org/sipp/${year}/${file}${ix}.dct
		fi
	done

done

			
echo ""
echo "downloading CORE raw data. will take a while."
echo "============================================="
echo ""



cd ..
cd dat

for file in sipp${yr}l

do

	for (( ix=1; ix<10; ix++ ))
	do
		if [[ -e sipp${yr}l${ix}.dat ]];
		then
			echo "file ${file}${ix}.* exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.zip"
			wget  --no-verbose http://www.nber.org/sipp/${year}/${file}${ix}.zip
			unzip ${file}${ix}.zip
			rm ${file}${ix}.zip
			echo "unzipped and deleted ${file}${ix}.zip"
			echo "done with ${file}${ix}.dat"
			echo ""
		fi
	done

done

echo ""
echo "downloading TOPICAL raw data. will take a while."
echo "================================================"
echo ""

for file in sipp${yr}t

do

	for (( ix=1; ix<10; ix++ ))
	do
		if [[ -e sipp${yr}t${ix}.dat ]];
		then
			echo "file ${file}${ix}.* exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.zip"
			wget  --no-verbose http://www.nber.org/sipp/${year}/${file}${ix}.zip
			unzip ${file}${ix}.zip
			rm ${file}${ix}.zip
			echo "unzipped and deleted ${file}${ix}.zip"
			echo "done with ${file}${ix}.dat"
			echo ""
		fi
	done

done

echo "program setup_SIPP96 ends."

