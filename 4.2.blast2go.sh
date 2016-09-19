
id=$1
xml=/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/Blast/refSeq_$id.nr.xml
outfile=/Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/Blast2GO/refSeq_$id

/System/software/jdk1.7.0_51/bin/java  -Xms1000m -Xmx15000m -cp /Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/*:/Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/ext/*: es.blast2go.prog.B2GAnnotPipe -prop /Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/b2gPipe.properties -in $xml -out $outfile -v -annot




#/System/software/jdk1.7.0_51/bin/java  -Xms1000m -Xmx15000m -cp /Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/*:/Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/ext/*: es.blast2go.prog.B2GAnnotPipe -prop /Result/huangfei/RNA_RNAref_version4.1/Annotation/b2g4pipe/b2gPipe.properties -in /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/Blast/refSeq_19.nr.xml -out /Disk04/Project/Micro/liyanli/A552_BeeMetaTranscriptome/Result/Annotation/NR/Blast2GO/refSeq_19 -v -annot



