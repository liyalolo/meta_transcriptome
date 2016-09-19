
#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/removeDuplicate.pl -fq1 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/01.DataClean/A1/A1.nohost_1.fq.gz -out /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/noduplicate/A1  -fq2 /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/01.DataClean/A1/A1.nohost_2.fq.gz  && \
export LD_LIBRARY_PATH=/System/software/boost/stage/lib:$LD_LIBRARY_PATH && \
sh /Result/huangfei/RNA_RNAref_version4.1/Assemble/Trinity.sh -s /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/A1.lib -o /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1 -n A1 && \
rm -rf /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/both.fa* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/left.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/right.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/chrysalis /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/jaccard_clip_workdir* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/tmp.* /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/*.sam /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/jellyfish.kmers.fa /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/assembly/A1/*.ebwt && \
rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/noduplicate/A1_1.fq && \
rm /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/noduplicate/A1_2.fq && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/test/Result/Assemble/Trinity/A1/trinity_A1.sh.sign




