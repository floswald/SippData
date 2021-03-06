

#!/bin/bash

# bash script to 
# 1) setup the folder structure for SIPP 2008 panel and
# 2) download all raw data, do files and dct files from NBER


echo ""
echo "downloading data from NBER"
echo "=========================="
echo ""

dest=~/datasets/SIPP
cd $dest

year=2008
yr=08

numcore=13
numtopi=9


mkdir -p ${year}
cd ${year}
mkdir -p doc
mkdir -p do_NBER	# create folder for NBER do files. I'll change those
mkdir -p dct    	
mkdir -p dta
mkdir -p dat
mkdir -p dat/core_and_topical


cd do_NBER

for file in sippl${yr}puw sippp${yr}putm

do

	for (( ix=1; ix<${numcore}; ix++ ))
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
			wget  --no-verbose -P ${dest}/${year}/dct http://www.nber.org/sipp/${year}/${file}${ix}.dct
		fi
	done

done

# download longitudinal weight
echo ""
echo ""
echo "downloading longitudinal weight"
wget  --no-verbose -P ${dest}/${year}/do_NBER http://www.nber.org/sipp/${year}/sipplgtwgt2008w7.do
wget  --no-verbose -P ${dest}/${year}/dct http://www.nber.org/sipp/${year}/sipplgtwgt2008w7.dct
wget  --no-verbose -P ${dest}/${year}/dat http://www.nber.org/sipp/${year}/lgtwgt2008w7.zip
unzip ${dest}/${year}/dat/lgtwgt2008w7.zip


for file in 2008w sipp${yr}w
do

	for (( ix=1; ix<9 ;ix++ ))
	do
		if [[ -e ../doc/${file}${ix}.pdf ]];
		then
			echo "file ${file}${ix}.pdf exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.pdf"
			if [[ "$file" = "sipp${yr}w" ]]
			then
				wget --no-verbose -P ${dest}/${year}/doc http://www.nber.org/sipp/${year}/${file}${ix}c.pdf
			else
				wget --no-verbose -P ${dest}/${year}/doc http://www.nber.org/sipp/${year}/${file}${ix}tm.pdf
			fi
		fi
	done
done
			
echo ""
echo "downloading CORE raw data. will take a while."
echo "============================================="
echo ""


cd ..
cd dat

for file in l${yr}puw 

do

	for (( ix=1; ix<=${numcore}; ix++ ))
	do
		if [[ -e l${yr}puw${ix}.dat ]];
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
		fi
	done

done

echo ""
echo "downloading TOPICAL raw data. will take a while."
echo "============================================="
echo ""

for file in  p${yr}putm

do

	for (( ix=1; ix<=${numcore}; ix++ ))
	do
		if [[ -e p${yr}putm${ix}.dat ]];
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
		fi
	done

done

echo "program setup_SIPP08 ends."

