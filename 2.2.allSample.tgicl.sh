
cat  /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscript
ome/Result/Cluster/TGICL/SC325/SC325-Unigene.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/YN537/YN537-Unigene.fa /Disk04/Pr
oject/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/BJ917/BJ917-Unigene.fa >/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Clus
ter/TGICL/for_cluster.fa 

perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/tgicl.nozmsort.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/for_cluster.fa   -l 40 -c 10 -v 20 -O ' -minmatch 35 -minscore 35  -repeat_stringency 0.95 '  && \




cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/asm_*/align > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/align && \


perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/phrap.id.list.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/align /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/align && \


perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/get_single.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/align.cluster for_cluster.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/single && \


cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/asm_*/contigs > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/asm_cluster.fa  && \


cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/single.prefect.fa >> /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/single.fa  && \


cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/asm_*/contigs /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/single.fa > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster_and_single.fa && \


cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/align.cluster /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/single.list > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster_and_single.fa.list && \


/System/software/blast-2.2.23/bin/formatdb -p F -i /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster_and_single.fa && \

/System/software/blast-2.2.23/bin/blastall -p blastn -m 8 -e 1e-10 -F F -a 10 -d /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster_and_single.fa -i /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster_and_single.fa -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/all_vs_all.blast.m8 && \


perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_for_coverage.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/all_vs_all.blast.m8 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL && \


perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getUnigene.pl -indir /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL -sample All -length 200 -step 2 -outdir /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL && \

ln -s /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All-Unigene.fa && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/stat_TransLengthFreq.R /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_stat.xls /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_stat.pdf && \


/usr/bin/convert -density 300 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_stat.pdf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_stat.png && \

/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/stat_TransLengthDist.R /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_step.xls /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_step.pdf && \

/usr/bin/convert -density 300 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_step.pdf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All.length_step.png && \

cp /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/All-Unigene.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/*.xls /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/*.pdf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/*.png /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Upload/TGS_Report/Result/Assemble && \

rm -rf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/asm_* && \
rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/for_cluster* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/tgicl_cluster* && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Cluster/TGICL/cluster_all.sh.sign




