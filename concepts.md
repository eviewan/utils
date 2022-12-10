# File Formats

## FASTA
- stores name of sequence and the sequence

## FASTQ related
- FASTQ: stores biological sequence/reads and quality score (confidence in base call)
- ![FASTQ looks like this](https://www.drive5.com/usearch/manual7/fastq_fig.jpg)
- [shell commands for processing FASTQ](https://github.com/ewan212/utils/blob/main/fasta_utils.sh)


## SAM/BAM (after alignment)
- store mapping information for sequences
- header line starting with @
- elements: 
    1) Query name (QNAME): identifier that is unique to the read 
    2) Flag score: base 10 number used to represent binary
    3) reference name
    4) position
    5) mapping quality
    6) CIGAR


## Terminology
- Assembly: <br /> (stitch fragments back together) generates a contig/consensus seq from DNA fragments. 
- Alignment: <br /> checking sequence similarity between two or more different seq. Tells you how sequences are different, evolutionary relationship etc. 

- Soft-clipping: <br /> 
    - portions of the read that do not match well to the reference genome on either side of the read are ignored for alignment 
    - each soft clipped base is penalized (significantly smaller penalty than mismatching bases)
- Hard-clipping: <br /> isoft-clipping + clipped bases removed from the read seuqnece in BAM file
![](https://www.researchgate.net/profile/Scott-Dehm/publication/259984275/figure/fig3/AS:307386511314954@1450298063534/Soft-clipped-reads-vs-improperly-aligned-reads-at-a-structural-variant-breakpoint-The.png)


- haplotype-resolved: <br />
existing algorithms either collapse heterozygous alleles into one consensus or fail to cleanly separate haplotypes to produced phased asssemblies. <br />
hifiasm


- haplotype: <br />
group of allele in an organism that are inherited together from a single parent (most organisms contain DNA inherited from two parents), offspring gets one chromosome in each pair from each parent

Humans and most other animals are diploid (2N), having two sets. Many plants have higher ploidy; for example, the hexaploid (6N)

- phasing:<br />
determining which variants are from the same copy of a chromosome (cis) and which are from different copies (trans) <br />
one approach is to use mother-father-child trios: variants in the child's genome that are only present in one parent must be on the same chromosome <br />
![](https://www.pacb.com/wp-content/uploads/img_phasing_to_separate_maternal_paternal_haplotypes.svg)

- N50: <br />
The read length at which 50% of the bases are in reads longer than, or equal to, this value


## Parallel Processing
Parallelism takes the name of multi-threading at the core and machine levels, and scatter-gather at the cluster/cloud level.

1) Multi-threading
- a thread of execution is a set of instructions that the program issues to the processor to get work done
- In single-threading mode, a program only sends a single thread at a time to the processor and waits for it to be finished before sending another one
- In multi-threading mode, the program may send several threads to the processor at the same time.
- refers to what happens internally when the one program you're running (in our case, the GATK) sends several sets of instructions to the processor to achieve the instructions that you originally gave it in a single command-line

2) scatter-gather
- breaking up a task into smaller, parallelized tasks (scattering) then collecting and integrating the results (gathering)
- difference from multi-threading: scatter-gather - paralellization happens outside of the program itself
    - scatter-gather strategy involves separate copies of the program 
    - The results of each run will be stored in temporary files. Then once all the runs are done, the engine will collate all the results into the final output files, as if the tool had been run as a single command (= the gather step)


## scalability
- capability (of a system, network, or process) to handle a growing amount of work, or its potential to be enlarged to accommodate that growth
- data volume (number of rows, columns, and overall bytes), algorithm design and implementation (parallel, distributed, memory efficient) for data preparation and model building and scoring, hardware (RAM, CPU, storage), volume and rate of data science work products produced, number of data science players and projects, and workflow complexity.
- horozontal scaling
    - load balancing required
    - resilient: if one machine fails you can redirect load to others
    - network calls (slower)
    - scales well as user increases
    - data inconsistency
- vertical scaling
    - single point of failure
    - inter process communication (faster)
    - hardware limit
    - data is consistent