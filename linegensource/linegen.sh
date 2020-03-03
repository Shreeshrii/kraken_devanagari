#!/bin/bash
unicodefontdir=/home/ubuntu/.fonts
traininginput=sa-training.txt
fontlist=sa-all-fontslist.txt
fontcount=$(wc -l < "$fontlist")
linecount=$(wc -l < "$traininginput")
perfontcount=$(( linecount / fontcount))
trainingtext=/tmp/kraken-train.txt
fonttext=/tmp/kraken-font-train.txt
cp ${traininginput} ${trainingtext} 
rm -rf newgt
mkdir newgt
 while IFS= read -r fontname
     do
		echo "$fontname"
        head -$perfontcount ${trainingtext} > ${fonttext}
        sed -i  "1,$perfontcount d"  ${trainingtext}
		ketos linegen  -u NFC  --disable-degradation -f "${fontname}" -o newgt/"${fontname// /_}" -l sa ${fonttext}
      done < "$fontlist"
