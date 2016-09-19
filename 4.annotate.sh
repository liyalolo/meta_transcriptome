
CAZy, eggNOG, kegg,
COG,SWISSPROT
NR, Blast2GO,
NT,



#/Result/huangfei/test/diamond blastx -d /Result/huangfei/test/test/animal.fa -q /Disk04/Project/RNA/denovo/A744/result/Annotation/divideFA/refSeq_2.fa -o /Result/huangfei/test/test/divideFA/refSeq_2.blastx.xml --outfmt xml  --evalue 1e-5 --threads 24   --max-target-seqs 20


#/Disk04/Project/Micro/liyanli/bin/diamond-master/bin/diamond  blastp -d /Disk04/Project/Micro/liyanli/bin/diamond-master/bin/nr_Microbe.dmnd  -q /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/divideFA_100/refSeq_56.fa -a  /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/refSeq_56   -t /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/tmp -e  1e-5  -p 24


#/System/software/blast-2.2.26/bin/blastall  -e  1e-5  -F  F -a 10 -m 8  -p blastx -d /Database/nr/RNA/current/Plants.fa -i /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Annotation/divideFA/refSeq_15.fa -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Annotation/NR/Blast/refSeq_15.nr.xml -a  15  -m  7  -v  20  -b  20


id=$1
query=/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/divideFA_100/refSeq_$id.fa
outfile=/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/refSeq_$id.nr.xml
ref=/Disk04/Project/Micro/liyanli/bin/diamond-master/bin2/nr_Microbe.dmnd


/Result/huangfei/test/diamond blastx  -d $ref  -q $query -o $outfile --outfmt xml  --evalue 1e-5 --threads 24   --max-target-seqs 20


