
/System/software/rsem-1.2.21/rsem-calculate-expression   --paired-end  --num-threads 5  --samtools-sort-mem 9G   --bowtie2  --bowtie2-path /System/software/bowtie2-2.1.0/ -temporary-folder  /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/temp /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/01.DataClean/A3/A3.nohost_1.fq.gz  /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/01.DataClean/A3/A3.nohost_2.fq.gz /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/refIndex/reference /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3

perl /Result/huangfei/RNA_RNAref_version4.1/Expression/RandomInGene.pl -a /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.transcript.bam -f /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/refIndex/reference.transcripts.fa -s /System/software/samtools-0.1.19/samtools -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3 -n A3

/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Expression/Reads_random.R /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.random.cout /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.random.pdf A3

/usr/bin/convert -density 300 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.random.pdf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.random.png

cp /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.random.* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Upload/TGS_Report/Result/Expression

perl /Result/huangfei/RNA_RNAref_version4.1/Expression/AlignStat.pl  -f /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.transcript.bam -q /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/01.DataClean/A3/A3.nohost_1.fq.gz -s A3 -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3

rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Expression/RSEM/A3/A3.transcript.bam





