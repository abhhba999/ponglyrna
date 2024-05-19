#!/bin/bash
cd ./rfam
snrna_no=`awk '{print $1}' rfam.anno.snRNA.txt|sed 's/$/&\.fa/g'`
cat $snrna_no|sed -n '/Homo sapiens/{p;n;p}' > rfam.hg.snrna.fa
rrna_no=`awk '{print $1}' rfam.anno.rRNA.txt|sed 's/$/&\.fa/g'`
cat $rrna_no|sed -n '/Homo sapiens/{p;n;p}' > rfam.hg.rrna.fa
trna_no=`awk '{print $1}' rfam.anno.tRNA.txt|sed 's/$/&\.fa/g'`
cat $trna_no|sed -n '/Homo sapiens/{p;n;p}' > rfam.hg.trna.fa
srna_no=`awk '{print $1}' rfam.anno.sRNA.txt|sed 's/$/&\.fa/g'`
cat $srna_no|sed -n '/Homo sapiens/{p;n;p}' > rfam.hg.srna.fa
mirna_no=`awk '{print $1}' rfam.anno.miRNA.txt|sed 's/$/&\.fa/g'`
cat $srna_no|sed -n '/Homo sapiens/{p;n;p}' > rfam.hg.mirna.fa
cd ../ensembl
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/snRNA/{p;n;p}' >>  ../rfam/rfam.hg.snrna.fa
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/miRNA/{p;n;p}' >>  ../rfam/rfam.hg.mirna.fa
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/snoRNA/{p;n;p}' >>  ../rfam/rfam.hg.snrna.fa
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/rRNA/{p;n;p}' >>  ../rfam/rfam.hg.rrna.fa
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/tRNA/{p;n;p}' >>  ../rfam/rfam.hg.trna.fa
cat Homo_sapiens.GRCh38.ncrna.fa | sed -n '/sRNA/{p;n;p}' >>  ../rfam/rfam.hg.srna.fa
mkdir ../miRNA/blastdb cd cd ../miRNA/blastdb
makeblastdb -in ../rfam/rfam.hg.trna.fa -dbtype nucl -title rfam.hg.trna -out rfam.hg.trna
makeblastdb -in ../rfam/rfam.hg.rrna.fa -dbtype nucl -title rfam.hg.rrna -out rfam.hg.rrna
makeblastdb -in ../rfam/rfam.hg.srna.fa -dbtype nucl -title rfam.hg.srna -out rfam.hg.srna
makeblastdb -in ../rfam/rfam.hg.snrna.fa -dbtype nucl -title rfam.hg.snrna -out rfam.hg.snrna
makeblastdb -in ../rfam/rfam.hg.mirna.fa -dbtype nucl -title rfam.hg.mirna -out rfam.hg.mirna
makeblastdb -in ../miRBase/hairpin.fa -dbtype nucl -title hairpin -out rfam.hg.hairpin
makeblastdb -in ../piRbase/hsa.v3.0.fa -dbtype nucl -title pirna -out rfam.hg.pirna
