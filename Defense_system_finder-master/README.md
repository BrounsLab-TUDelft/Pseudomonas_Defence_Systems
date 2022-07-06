# DefenseSystemFinder
A tool that predicts the presence of an innate defense systems within finished genomes, draft genomes, and metagenomes.

## Installation:

Download the Defense_system_finder folder from the github page.

Advised way of installing the dependencies is through conda in the command prompt (This is the easiest way, but installing can still take some time ~ an hour):

Install conda via the instructions on their website (https://docs.conda.io/projects/conda/en/latest/user-guide/install/). 

Run the following lines of code in your command prompt to install the dependencies within conda:

```bash
conda create -n defense_system_finder hmmer prodigal r-stringr r-dplyr r-base r-viridis r-gggenes r-ggplot2 -c conda-forge -c bioconda -c r
conda activate defense_system_finder
```

In case you are using macOS also run:

```bash
conda install libgfortran=3
```

## Usage:
Example for a standard search for known defense systems (change paths to your own paths):
```bash
conda activate defense_system_finder
/path/to/Defense_system_finder/Scripts/Defense_system_finder.sh -p /path/to/Defense_system_finder/
```

### The help message:
```bash
Usage:  conda activate defense_system_finder
Usage:  ./Defense_system_finder.sh -p path_to_defense_system_finder_folder [-G path_to_folder] [-r path_to_folder] [-o path_to_folder] [-R path_to_folder] [-b path_to_folder] [-B path_to_folder] [-g single|meta] [-e evalue] [-t threads] [-k max_skipped_genes] [-t yes|no] [-s png|svg|pdf|ps ]
	-p Path to the Defense_system_finder folder (example: ~/Defense_system_finder/)
	  - This folder should already contain the Genome_input or Scripts folder from the github when -G or -r are not given
	-G Path to the folder with genomes (default = path_to_defense_system_finder_folder/Genome_input/)
	-r Path to the folder with the scripts (default = path_to_defense_system_finder_folder/Scripts/)
	-o Path to the results folder (default = path_to_defense_system_finder_folder/Defense_system_finder_results_folder/)
	-R Path to the raw output folder (default = path_to_defense_system_finder_folder/Defense_system_finder_raw_output_folder/)
	-b Path to the HMM folder (default = path_to_defense_system_finder_folder/HMM_database/)
	-B Path to the custom HMM folder (This must be a different folder than the HMM folder)
	-g Single- or metagenome analysis (default = meta, alternative = single)
	-e E-value for HMM hit to be considered significant (default = 0.01)
	-t Number of threads you want to run this tool on (default = 1)
	-k Number of skipped genes allowed in an operon (default = 3)
	-f Visualization of the figures (default = yes)
	-s File type of the figure output (default = png)
```
## Folder description:
- Genome_input = Input folder of the genomes you want to analyse, make sure your genome files have a fasta extention.
- Scripts = Folder with the scripts needed for the analysis. This folder contains the Defense_system_finder.sh file that starts the analysis.
- Defense_system_finder_results_folder = Automatically generated and contains that the output of the analysis.
- Defense_system_finder_raw_output_folder = Automatically generated and contains the prodigal and HMM outputs.
- HMM_database = Contains all preset HMMs used for the analysis.

## The output:
The output files can be found in the Defense_system_finder/Defense_system_finder_results_folder/ on default.
All information regarding complete clusters within your data set: Output_df.csv

## A list of the defense systems that are being searched for:
Figure 2D of Gao et al. (2020) (https://science.sciencemag.org/content/369/6507/1077?rss=1)


![List of Goa et al 2020](https://user-images.githubusercontent.com/59123174/103439580-6c160d80-4c3e-11eb-8641-857287c003c4.png)

## If you want to add your own defense system:
- Step 1: Create a folder that contains all the HMMs of your new defense system (The HMMs should be generated from whole sequences and should all end with the .hmm extension)(the path to this folder will be the input of the -B option).
- Step 2: Open Defense_system_finder/Scripts/Defense_system_info.R, fill in the template and copy it between the indicated lines (instructions are present in the file itself).
- Step 3: Open Defense_system_finder/Scripts/Defense_system_finder.R and add the name of the defense system to the indicated line (instructions are present in the file itself).

Example:
```bash
path/to/new_HMM_folder contains al the HMMs of your new defense system with .hmm extension
This example code searches for both the original HMMs and the new HMMs.
conda activate defense_system_finder
/path/to/Defense_system_finder/Scripts/Defense_system_finder.sh -p /path/to/Defense_system_finder/ -B path/to/new_HMM_folder/ -t 2
```

## Developer information:
```bash
Made by: BSc D.F.van den Berg
Email: daanfvandenberg@gmail.com
LinkedIn: linkedin.com/in/daan-frits-van-den-berg-930b04107/
Last updated: 12 01 2021
```
