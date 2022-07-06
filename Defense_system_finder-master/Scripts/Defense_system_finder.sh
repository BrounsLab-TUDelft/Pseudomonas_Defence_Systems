#Author: Bsc. D.F. van den Berg
#Date: 08/02/2021

#!/bin/bash

#help message
helpFunction()
{
  echo "Usage:  conda activate defense_system_finder"
  echo "Usage:  ./Defense_system_finder.sh -p path_to_defense_system_finder_folder [-G path_to_folder] [-r path_to_folder] [-o path_to_folder] [-R path_to_folder] [-b path_to_folder] [-B path_to_folder] [-g single|meta] [-e evalue] [-t threads] [-k max_skipped_genes] [-t yes|no] [-s eps|ps|tex|pdf|jpeg|tiff|png|bmp|svg]"
  echo -e "\t-p Path to the Defense_system_finder folder (example: ~/Defense_system_finder/)"
  echo -e "\t  - This folder should already contain the Genome_input or Scripts folder from the github when -G or -r are not given"
  echo -e "\t-G Path to the folder with genomes (default = path_to_defense_system_finder_folder/Genome_input/)"
  echo -e "\t-r Path to the folder with the scripts (default = path_to_defense_system_finder_folder/Scripts/)"
  echo -e "\t-o Path to the results folder (default = path_to_defense_system_finder_folder/Defense_system_finder_results_folder/)"
  echo -e "\t-R Path to the raw output folder (default = path_to_defense_system_finder_folder/Defense_system_finder_raw_output_folder/)"
  echo -e "\t-b Path to the HMM folder (default = path_to_defense_system_finder_folder/HMM_database/)"
  echo -e "\t-B Path to the custom HMM folder (This must be a different folder than the HMM folder)"
  echo -e "\t-g Single- or metagenome analysis (default = meta, alternative = single)"
  echo -e "\t-e E-value for HMM hit to be considered significant (default = 0.01)"
  echo -e "\t-t Number of threads you want to run this tool on (default = 1)"
  echo -e "\t-k Number of skipped genes allowed in an operon (default = 3)"
  echo -e "\t-f Visualization of the figures (default = yes)"
  echo -e "\t-s File type of the figure output (default = pdf)"
  exit 1 # Exit script after printing help
}
#Input being processed to parameters
while getopts "p:G:o:g:t:R:k:e:r:b:h:B:f:s:" opt
do
case "$opt" in
p ) parameterPath="$OPTARG" ;;
G ) parameterGenome_input="$OPTARG" ;;
b ) parameterDatabase_folder="$OPTARG" ;;
r ) parameterScripts_folder="$OPTARG" ;;
o ) parameterOutput="$OPTARG" ;;
k ) parameterSkip="$OPTARG" ;;
g ) parameterProdigal="$OPTARG" ;;
t ) parameterThreads="$OPTARG" ;;
e ) parameterDiamond_evalue="$OPTARG" ;;
R ) parameterRawOutput="$OPTARG" ;;
B ) parameterCustomHMM="$OPTARG" ;;
f ) parameterVisualization="$OPTARG" ;;
s ) parameterFileType="$OPTARG" ;;
h ) helpFunction ;;
? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
esac
done

#All parameters are being checked for valid inputs and paths to the folders are being checked + folders are being created

if [ -z "$parameterPath" ]
then
  echo "Error message: Did you forget to put in the path to the defense_system_folder?";
  helpFunction
  exit 1
fi

if [ ! -d "$parameterPath" ]
then
echo "Error message: The path you gave to the defense_system_finder folder does not seem to be existing";
helpFunction
exit 1
fi

parameterPath=$(echo "$parameterPath" | sed 's/\/$//')
parameterPath=$(echo "$parameterPath""/")

# Print helpFunction in case parameters are empty
if [ -z "$parameterGenome_input" ]
then
parameterGenome_input="$parameterPath"Genome_input/
fi

if [ ! -d "$parameterGenome_input" ]
then
echo "Error message: The path you gave to the genome folder does not seem to be existing";
helpFunction
exit 1
fi

parameterGenome_input=$(echo "$parameterGenome_input" | sed 's/\/$//')
parameterGenome_input=$(echo "$parameterGenome_input""/")

genome_directory_list=$(ls "$parameterGenome_input"*.f*a)

if [ ${#genome_directory_list} -eq 0 ]
  then
    echo "Error message: Did you forget to put in the genomes in the Defense_system_finder/Genome_input folder? And do they all have a fasta extension"
helpFunction 
exit 1
fi


if [ -z "$parameterOutput" ]
then
  mkdir -p "$parameterPath"Defense_system_finder_output_folder
  parameterOutput=$(echo "$parameterPath"Defense_system_finder_output_folder/)
fi
if [ ! -d $parameterOutput ]
then
mkdir -p $parameterOutput
fi

parameterOutput=$(echo "$parameterOutput" | sed 's/\/$//')
parameterOutput=$(echo "$parameterOutput""/")

if [ ! -d $parameterRawOutput ]
then
mkdir -p $parameterRawOutput
fi
if [ -z "$parameterRawOutput" ]
then
  mkdir -p "$parameterPath""Defense_system_finder_raw_output_folder"
  parameterRawOutput=$(echo "$parameterPath""Defense_system_finder_raw_output_folder/")
fi
if [ -d "$parameterRawOutput" ]
then
##Making the directories:
parameterRawOutput=$(echo "$parameterRawOutput" | sed 's/\/$//')
parameterRawOutput=$(echo "$parameterRawOutput""/")
mkdir -p "$parameterRawOutput"HMM_output
mkdir -p "$parameterRawOutput"Prodigal_annotations
mkdir -p "$parameterRawOutput"Prodigal_translates

fi

if [ -z $parameterDatabase_folder ]
then
  #mkdir -p "$parameterPath"HMM_database
  parameterDatabase_folder=$(echo "$parameterPath"HMM_database/)
fi
if [ ! -d $parameterDatabase_folder ]
then
echo "Error message: The path you gave to the HMM folder does not seem to be existing";
helpFunction
exit 1
fi


if [ ! -d "$parameterCustomHMM" ] && [ ! -z "$parameterCustomHMM" ]
then
echo "Error message: The path you gave to the custom HMM folder does not seem to be existing";
helpFunction
exit 1
fi


if [ -z $parameterScripts_folder ]
then
  parameterScripts_folder=$(echo "$parameterPath"Scripts/)
fi
if [ ! -d "$parameterScripts_folder" ]
then
echo "The path you gave to the scripts folder does not seem to be existing";
helpFunction
exit 1
fi

if [ -z "$parameterProdigal" ]
then
  parameterProdigal="meta"
fi
if [[ ! "$parameterProdigal" =~ ^("single"|"meta")$ ]]
then
echo "Error message: Please choose between single and meta for the prodigal setting";
helpFunction
exit 1
fi

if [ -z "$parameterFileType" ]
then
  parameterFileType="png"
fi
if [[ ! "$parameterFileType" =~ ^("png"|"svg"|"pdf"|"ps")$ ]]
then
echo "Error message: Please choose between png, svg, pdf, and ps for the figure file type setting";
helpFunction
exit 1
fi

if [ -z "$parameterVisualization" ]
then
  parameterVisualization="yes"
fi
if [[ ! "$parameterVisualization" =~ ^("yes"|"no")$ ]]
then
echo "Error message: Please choose between yes and no for the figure visualization setting";
helpFunction
exit 1
fi

if [ -z "$parameterSkip" ]
then
  parameterSkip=$(echo 3)
fi
re='^[0-9]+$'
if ! [[ $parameterSkip =~ $re ]] ; then
   echo "Error message: Please use an integer as the input of the skip genes parameter" >&2; 
   helpFunction
   exit 1
fi

if [ -z "$parameterDiamond_evalue" ]
then
  parameterDiamond_evalue=$(echo 0.01)
fi
re='^0[.][0-9]+$'
if ! [[ $parameterDiamond_evalue =~ $re ]] ; then
   echo "Please use an integer lower than 1 as the input of the evalue parameter" >&2; 
   helpFunction
   exit 1
fi


if [ -z "$parameterThreads" ]
then
  parameterThreads=$(echo 1)
fi
re='^[0-9]+$'
if ! [[ $parameterThreads =~ $re ]] ; then
   echo "Error message: Please use an integer as the input of the threads parameter" >&2; 
   helpFunction
   exit 1
fi

## adds dash at the end of the directories:
parameterScripts_folder=$(echo "$parameterScripts_folder" | sed 's/\/$//')
parameterScripts_folder=$(echo "$parameterScripts_folder""/")

parameterDatabase_folder=$(echo "$parameterDatabase_folder" | sed 's/\/$//')
parameterDatabase_folder=$(echo "$parameterDatabase_folder""/")

parameterCustomHMM=$(echo "$parameterCustomHMM" | sed 's/\/$//')
parameterCustomHMM=$(echo "$parameterCustomHMM""/")

### testing inputs
if [[ "$parameterRawOutput" != /* ]]; then
 parameterRawOutput=`pwd`"/""$parameterRawOutput"
fi
if [[ "$parameterCustomHMM" != /* ]]; then
 parameterCustomHMM=`pwd`"/""$parameterCustomHMM"
fi
if [[ "$parameterPath" != /* ]]; then
 parameterPath=`pwd`"/""$parameterPath"
fi

if [[ "$parameterOutput" != /* ]]; then
 parameterOutput=`pwd`"/""$parameterOutput"
fi
if [[ "$parameterScripts_folder" != /* ]]; then
 parameterScripts_folder=`pwd`"/""$parameterScripts_folder"
fi
if [[ "$parameterDatabase_folder" != /* ]]; then
 parameterDatabase_folder=`pwd`"/""$parameterDatabase_folder"
fi
if [[ "$parameterGenome_input" != /* ]]; then
 parameterGenome_input=`pwd`"/""$parameterGenome_input"
fi

if [ "$parameterVisualization" == "yes" ]; then
  mkdir -p "$parameterOutput"Figures/
fi

## Old code as comments
##removing old runs
#rm -f "$parameterRawOutput"*
#rm -rf "$parameterOutput"*
#for zipped_fasta in "$parameterGenome_input"*.f*a.gz; do gunzip -q "$parameterGenome_input"$zipped_fasta; done

#genome list
genome_directory_list=$(ls "$parameterGenome_input"*.f*a)

#if genome list is not 0 do:
#removing coding characters away from the contig such as |, [, and ] etc
#performing prodigal on the genomes
#performing hmmsearch on the prodigal gene protein sequences
#reformatting hmm output files for R analysis
if [ ${#genome_directory_list} -eq 0 ]
  then
    echo "Did you forget to put in the genomes in the Defense_system_finder/Genome_input folder? And do they all have a fasta extension?"
    helpFunction
    exit 1
else
    #removing potentially older runs
    rm -f "$parameterRawOutput"HMM_output/*
    rm -f "$parameterRawOutput"Prodigal_translates/*
    rm -f "$parameterRawOutput"Prodigal_annotations/*

    #removing coding characters away from the contig such as |, [, and ] etc
    cd "$parameterGenome_input";
    echo "Renaming the contigs for further analysis (spaces are replaced with _'s)"
    for processed_genomic_accession_name in *.f*a; do
      cat $processed_genomic_accession_name | tr "." "_" | tr " " "_" | tr "[" "_" | tr "]" "_" | tr "{" "_" | tr "}" "_" | tr "-" "_" | tr "/" "_" | tr "," "_" | tr "|" "_" > "$processed_genomic_accession_name"_1
      rm -f $processed_genomic_accession_name
      mv "$processed_genomic_accession_name"_1 "$processed_genomic_accession_name"
      #awk '$1 ~ ">" {if (NR > 1) {print c;} c=0;printf substr($1,2) "\t"; } $0 !~ ">" {c+=length($0);} END { print c; }' $processed_genomic_accession_name >> "$parameterOutput"contig_lengths.csv
    done
    
    for processed_genomic_accession_name in *.f*a; do
      #performing prodigal on the genomes
      echo "Going to perform the gene annotation of "${processed_genomic_accession_name}" using prodigal."
      cd "$parameterGenome_input";
      prodigal -i "$parameterGenome_input"$processed_genomic_accession_name -c -d "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_nuc_1" -a "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_prot_1" -o "$parameterRawOutput"Prodigal_annotations/$processed_genomic_accession_name -f gff -q -p "$parameterProdigal"; 
      awk '!/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n }' "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_prot_1" > "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_prot";
      awk '!/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n }' "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_nuc_1" > "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_nuc";
      rm -f "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_prot_1"
      rm -f "$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_nuc_1"
      
      #format prodigal output
      cd "$parameterRawOutput"Prodigal_annotations/;
      i="$parameterRawOutput"Prodigal_annotations/$processed_genomic_accession_name
      VAR1=$(cat $i | grep -e "^[A-Z]" | awk '{print $1}'); 
      VAR2=$(cat $i | grep -e "^[A-Z]" | awk '{print $9}'| awk 'BEGIN{FS=";"}{print $1}' | awk 'BEGIN{FS="_"}{print $2}'); 
      VAR3=$(cat $i | grep -e "^[A-Z]" | awk '{print $4}');
      VAR4=$(cat $i | grep -e "^[A-Z]" | awk '{print $5}');
      VAR5=$(cat $i | grep -e "^[A-Z]" | awk '{print $7}');
      VAR6=$(paste -d "_" <(echo "$VAR1") <(echo "$VAR2"));
      paste -d "\t" <(echo "$VAR6") <(echo "$VAR3") <(echo "$VAR4") <(echo "$VAR5") > $i"_temp"; 
      cat $i"_temp" | awk '{print $1" ","\t",$2,"\t",$3,"\t",$4}' > $i"_prodigal_gff";
      rm -f "$processed_genomic_accession_name"*temp;
      rm -f "$processed_genomic_accession_name"*_prodigal_gff_prodigal_gff
      
      #format prodigal translates
      cd "$parameterRawOutput"Prodigal_translates/;
      rm -f "$processed_genomic_accession_name"*_prodigal_protein_prodigal_protein;
      rm -f "$processed_genomic_accession_name"*_prodigal_nucleotide_prodigal_nucleotide;
      rm -f "$processed_genomic_accession_name"*temp;
      echo "Reformatting the gene proteins sequences of "${processed_genomic_accession_name}" for further process."
      
      j="$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_prot"
      awk '!/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n }' $j > $j"_temp";
      VAR1=$(cat $j"_temp" | egrep -o ^">.*_[[:digit:]]*[[:space:]]")
      VAR2=$(cat $j"_temp" | egrep "^[A-Z]")
      paste -d "\t" <(echo "$VAR1") <(echo "$VAR2") > $j"_prodigal_protein";
      rm -f "$processed_genomic_accession_name"*_prodigal_protein_prodigal_protein;
      rm -f "$processed_genomic_accession_name"*temp;
      
      #format prodigal nucleotides
      k="$parameterRawOutput"Prodigal_translates/$processed_genomic_accession_name"_nuc"
      awk '!/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n }' $k > $k"_temp";
      VAR1=$(cat $k"_temp" | egrep -o ^">.*_[[:digit:]]*[[:space:]]")
      VAR2=$(cat $k"_temp" | egrep "^[A-Z]")
      paste -d "\t" <(echo "$VAR1") <(echo "$VAR2") > $k"_prodigal_nucleotide";
      rm -f "$processed_genomic_accession_name"*_prodigal_nucleotide_prodigal_nucleotide;
      rm -f "$processed_genomic_accession_name"*temp;
      
      #performing hmmsearch on the prodigal gene protein sequences
      echo "Using HMMR to find genes that are defence systems genes (using the databases) within "${processed_genomic_accession_name}"."
      cd "$parameterDatabase_folder"; 
      for i in *.hmm; do
        hmmsearch -E "$parameterDiamond_evalue" --cpu "$parameterThreads" --domtblout "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_"$i"_hmm_matched.txt" -o ${processed_genomic_accession_name}"temp" $i "$parameterRawOutput"Prodigal_translates/"$processed_genomic_accession_name"_prot;
        cat "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_"$i"_hmm_matched.txt" >> "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_hmm_total_tbl_temp.txt";
      done
      
#performing hmmsearch with custom hmms on the prodigal gene protein sequences
if [ -d "$parameterCustomHMM" ] && [[ "$parameterCustomHMM" != "/" ]]
then
echo "doing custom HMM profiles"
      cd "$parameterCustomHMM"; 
      for i in *.hmm; do
        hmmsearch -E "$parameterDiamond_evalue" --cpu "$parameterThreads" --domtblout "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_"$i"_hmm_matched.txt" -o ${processed_genomic_accession_name}"temp" $i "$parameterRawOutput"Prodigal_translates/"$processed_genomic_accession_name"_prot;
        cat "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_"$i"_hmm_matched.txt" >> "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_hmm_total_tbl_temp.txt";
      done
fi

      #reformatting hmm output files for R analysis
      cd "$parameterDatabase_folder"; 
      rm -f ${processed_genomic_accession_name}"temp" 
      awk '{FS=" "; OFS = "\t"} {if($1 !~ "#"){print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22}}' "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_hmm_total_tbl_temp.txt" > "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}"_hmm_total_tbl.txt"

      rm -f "$parameterRawOutput"HMM_output/"$processed_genomic_accession_name""_hmm_total_tbl_temp.txt"
      rm -f "$parameterRawOutput"HMM_output/${processed_genomic_accession_name}*_hmm_matched.txt
    done;
    
    #inputs for the Rscript
    echo "Starting the R script to search for defence system clusters"
    Rscript "$parameterScripts_folder"Defense_system_finder.R "$parameterRawOutput" "$parameterGenome_input" "$parameterSkip" "$parameterOutput" $parameterScripts_folder "$parameterVisualization" $parameterFileType
fi
