

#!/bin/bash

# bash script to 
# 1) setup the folder structure for SIPP 2004 panel and
# 2) download all raw data, do files and dct files from NBER


echo ""
echo "downloading data from NBER"
echo "=========================="
echo ""

dest=~/datasets/SIPP
cd $dest

year=2001
yr=01

if [ $yr -eq 04 ]
then
	numcore=13
	numtopi=9
else
	numcore=10
	numtopi=10
fi


mkdir -p ${year}
cd ${year}
mkdir -p doc
mkdir -p do_NBER	# create folder for NBER do files. I'll change those
mkdir -p dct    	
mkdir -p dta
mkdir -p dat

# download 2004 .do and .dct files for all core and topical modules


cd do_NBER

for file in sip${yr}w sip${yr}t

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
wget  --no-verbose -P ${dest}/${year}/dat http://www.nber.org/sipp/${year}/http://www.nber.org/sipp/2001/lgtwgt2008w7.zip

for file in sipp${yr}w sipp${yr}t
do

	for (( ix=1; ix<${numcore} ;ix++ ))
	do
		if [[ -e ../doc/${file}${ix}.pdf ]];
		then
			echo "file ${file}${ix}.pdf exists."
			echo ""
		else 
			echo "downloading file ${file}${ix}.pdf"
			wget --no-verbose -P ${dest}/${year}/doc http://www.nber.org/sipp/${year}/${file}${ix}.pdf
		fi
	done
done



			
echo ""
echo "downloading CORE raw data. will take a while."
echo "============================================="
echo ""


cd ..
cd dat

for file in sipp${yr}w 

do

	for (( ix=1; ix<${numcore}; ix++ ))
	do
		if [[ -e sipp${yr}w${ix}.dat ]];
		then
			echo "file l${yr}puw${ix}.dat exists."
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

	for (( ix=1; ix<${numtopi}; ix++ ))
	do
		if [[ -e sipp${yr}t${ix}.dat ]];
		then
			echo "file p${yr}putm${ix}.dat exists."
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

echo "program setup_SIPP01 ends."
