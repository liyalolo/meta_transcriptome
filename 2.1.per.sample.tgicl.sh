
#!/bin/bash
echo ==========start at : `date` ==========
export LD_LIBRARY_PATH=/System/software/boost/stage/lib:$LD_LIBRARY_PATH && \
cd /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1 && \
if [ -e "/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/for_cluster.fa" ]; then rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/for_cluster.fa; fi && \
ln -s /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/Trinity.fasta /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/for_cluster.fa && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/tgicl.nozmsort.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/for_cluster.fa   -l 40 -c 10 -v 20 -O ' -minmatch 35 -minscore 35  -repeat_stringency 0.95 '  && \
cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/asm_*/align > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/align && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/phrap.id.list.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/align /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/align && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/tgicl/get_single.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/align.cluster for_cluster.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/single && \
cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/asm_*/contigs > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/asm_cluster.fa  && \
cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/single.prefect.fa >> /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/single.fa  && \
cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/asm_*/contigs /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/single.fa > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster_and_single.fa && \
cat /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/align.cluster /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/single.list > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster_and_single.fa.list && \
/System/software/blast-2.2.23/bin/formatdb -p F -i /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster_and_single.fa && \
/System/software/blast-2.2.23/bin/blastall -p blastn -m 8 -e 1e-10 -F F -a 10 -d /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster_and_single.fa -i /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster_and_single.fa -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/all_vs_all.blast.m8 && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_for_coverage.pl /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/all_vs_all.blast.m8 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1 && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getUnigene.pl -indir /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1 -sample A1 -length 150 -step 1 -outdir /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1 && \
ln -s /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/A1.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/A1-Unigene.fa && \
rm -rf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/asm_* && \
rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/for_cluster* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/tgicl_cluster* && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Cluster/TGICL/A1/cluster_A1.sh.sign


##########
#steps: 
         #/System/software/phrap-1.080812/bin/phrap CL1 -minmatch 35 -minscore 35 -repeat_stringency 0.95 -new_ace
         #generate alignment,asm_*/ folders, including ACE, singlets, align, contigs, err_log, log_std
         #cat asm_*/align >align etc
         #use phrap.id.list.pl script to generate files:align.cluster, align.perfect, align.perfect.single
         #generate single.perfect.fa, and contig fasta
         #formatdb index tgicl_cluster_and_single.fa
         #blastall -d tgicl_cluster_and_single.fa -q tgicl_cluster_and_single.fa
         #cluster for coverage filter, including solar by liheng, sorting m8 file
         #getUnigene.pl
#CROSS_MATCH
#Phrap
#CAP 组装



