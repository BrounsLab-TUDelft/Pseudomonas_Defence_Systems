## add your own custom defence system by adding the name of the defence system (the same one as used in the Defense_system_info.R template)
## example if you have two new defense systems added called Loki and Tor: 
## then change in line 5: Custom_defence_systems <- c() into Custom_defence_systems <- c("Loki", "Tor")

Custom_defence_systems <- c() #for example would be changed into: Custom_defence_systems <- c("Loki", "Tor")

### don't edit anything below this line ###

#Vector of all the defense systems to look for
#These names are the input for the: if(Defense_system_name =="RT_Type_XIII") etc in Defense_system_finder/Scripts/Defense_system_info.R
Defense_systems <- c(Custom_defence_systems, 
                     "Retron_TIR_1","Ec67_2","Ec88_3", "Ec78_4","DRT_type_1_5", 
                     "DRT_type_2_6", "DRT_type_3_7", "DRT_type_4_8", "DRT_type_5_9", 
                     "RADAR_10", "apeA_11", "AVAST_type_1_12", "AVAST_type_2_13", 
                     "AVAST_type_3_14", "AVAST_type_4_15", "AVAST_type_5_16", "dsr1_17", 
                     "dsr2_18", "SIR2_HerA_19", "DUF4297_STAND_20", "tmn_21", "qatABCD_22", 
                     "hhe_23", "mzaABCDE_24", "TerY_P_25", "upx_26", "ppl_27","ietAS_28", 
                     "Restriction_like_system_29", "Ec107like",	"type_IC2",	"type_IIIA2",	"type_V",	"type_XI",
                     "outgroup",	"type_IC3",	"type_IIIA3",	"type_VI",	"type_XII",
                     "type_IA",	"type_IIA1",	"type_IIIA4",	"type_VIIA1",	"type_XIII",
                     "type_IB1",	"type_IIA2",	"type_IIIA5",	"type_VIIA2",
                     "type_IB2",	"type_IIA3",	"type_IV",	"type_VIII",
                     "type_IC1",	"type_IIIA1",	"type_IX",	"type_X")

#Defense_systems <- c(Custom_defence_systems, 
#                     "Retron_TIR_1","Ec67_2","Ec88_3", "Ec78_4","DRT_type_1_5", 
#                     "DRT_type_2_6", "DRT_type_3_7", "DRT_type_4_8", "DRT_type_5_9", 
#                     "RADAR_10", "apeA_11", "AVAST_type_1_12", "AVAST_type_2_13", 
#                     "AVAST_type_3_14", "AVAST_type_4_15", "AVAST_type_5_16", "dsr1_17", 
#                     "dsr2_18", "SIR2_HerA_19", "DUF4297_STAND_20", "tmn_21", "qatABCD_22", 
#                     "hhe_23", "mzaABCDE_24", "TerY_P_25", "upx_26", "ppl_27","ietAS_28", 
#                     "Restriction_like_system_29", "RT_Type_I_A", "RT_Type_I_B", "RT_Type_I_C", 
#                     "RT_Type_II", "RT_Type_III","RT_Type_IV","RT_Type_IX","RT_Type_V",
#                     "RT_Type_VI", "RT_Type_VIII","RT_Type_X","RT_Type_XIII",
#                     "Ec107like",	"type_IC2",	"type_IIIA2",	"type_V",	"type_XI",
#                     "outgroup",	"type_IC3",	"type_IIIA3",	"type_VI",	"type_XII",
#                    "type_IA",	"type_IIA1",	"type_IIIA4",	"type_VIIA1",	"type_XIII",
#                     "type_IB1",	"type_IIA2",	"type_IIIA5",	"type_VIIA2",
#                     "type_IB2",	"type_IIA3",	"type_IV",	"type_VIII",
#                     "type_IC1",	"type_IIIA1",	"type_IX",	"type_X")


#Installation of the R packages with suppressed messages to reduce spam
suppressMessages(suppressWarnings(library(stringr)))
suppressMessages(suppressWarnings(library(dplyr)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(gggenes)))
suppressMessages(suppressWarnings(library(viridis)))

#This is the input from the defense_system_finder.sh file
defense_system_folder_path <- as.character(commandArgs(trailingOnly = T)[1])
working_directory <- defense_system_folder_path
path <- paste0(c(defense_system_folder_path, "HMM_output/"), collapse = "")
prodigal_path <- paste0(c(defense_system_folder_path, "Prodigal_annotations/"), collapse = "")
translates_path <- paste0(c(defense_system_folder_path, "Prodigal_translates/"), collapse = "")

genome_path <- as.character(commandArgs(trailingOnly = T)[2])
skippable_genes <- as.numeric(commandArgs(trailingOnly = T)[3])
output_path <- as.character(commandArgs(trailingOnly = T)[4])
scripts <- as.character(commandArgs(trailingOnly = T)[5])
visualize <- as.character(commandArgs(trailingOnly = T)[6])
visualize_type <- as.character(commandArgs(trailingOnly = T)[7])

#gets all the fasta file names from the directory with the genomes
genome_list <- list.files(path = genome_path, pattern = "*.f*a$")

#loads the information of the defense systems, including to scoring scheme.
source(paste0(c(scripts,"Defense_system_info.R"), collapse = ""))

#output excel file is being set-up
output_df <- matrix("", ncol = 37, nrow = 1)
colnames(output_df) <- c("qseqid","qseqid_accession","qlen","sseqid","subject_accession","slen","evalue","seq_score","seq_bias","ndom",
                         "of","cEvalue","iEvalue","domain_score","domain_bias","from_hmm_coord","to_hmm_coord","from_ali_coord","to_ali_coord",
                         "from_env_coord","to_env_coord","acc","Orientation","start","stop","nucleotide_sequence","protein_sequence","cluster",
                         "completeness","orientation_completeness","cluster_composition","defense_system","contig","genome","cluster_start","cluster_stop",
                         "subtype")
  
cluster_number <- 1
cluster_counter <- 1

#Per genome connects the prodigal file with the HMM outfmt file to obtain the nucleotide and protein sequence for the output file
for(genome in genome_list){
  print(paste0(genome, " is currently being searched for defence systems"))
  prodigal_table <- read.delim(paste0(prodigal_path, genome, "_prodigal_gff"), header = FALSE)
  colnames(prodigal_table) <- c("ID", "Start", "Stop", "Orientation")
  prodigal_table$ID <- paste0(as.character(paste0(prodigal_table$ID)), "  ")
  prodigal_table <- prodigal_table[order(prodigal_table$ID),]
  
  genome_protein_sequence <- read.delim(paste0(translates_path, genome,"_prot_prodigal_protein"), sep = "\t", header=FALSE)
  colnames(genome_protein_sequence) <- c("ID", "Protein_sequence")
  genome_protein_sequence[,"ID"]  <- as.character(genome_protein_sequence[,"ID"])
  genome_protein_sequence[,"Protein_sequence"]  <- as.character(genome_protein_sequence[,"Protein_sequence"])

  genome_nucleotide_sequence <- read.delim(paste0(translates_path, genome,"_nuc_prodigal_nucleotide"), sep = "\t", header=FALSE)
  colnames(genome_nucleotide_sequence) <- c("ID", "Nucleotide_sequence")
  genome_nucleotide_sequence[,"ID"]  <- as.character(genome_nucleotide_sequence[,"ID"])
  genome_nucleotide_sequence[,"Nucleotide_sequence"]  <- as.character(genome_nucleotide_sequence[,"Nucleotide_sequence"])

  genome_nucleotide_sequence$ID <- substring(genome_nucleotide_sequence$ID, 2)
  genome_nucleotide_sequence$ID <- as.character(paste0(genome_nucleotide_sequence$ID, "  "))
  
  genome_protein_sequence$ID <- substring(genome_protein_sequence$ID, 2)
  genome_protein_sequence$ID <- as.character(paste0(genome_protein_sequence$ID, "  "))
  
  if(file.size(paste0(path, genome, "_hmm_total_tbl.txt")) == 0){
    next
  }else{
    HMM_output <- read.delim(paste0(path, genome, "_hmm_total_tbl.txt"), header = F)
    colnames(HMM_output) <- c("qseqid", "qseqid_accession", "qlen", "sseqid", "subject_accession", 
                              "slen", "evalue", "seq_score", "seq_bias", "ndom", "of", "cEvalue", 
                              "iEvalue", "domain_score", "domain_bias", "from_hmm_coord", "to_hmm_coord",
                              "from_ali_coord", "to_ali_coord", "from_env_coord", "to_env_coord","acc")
    
    names <- NULL
    for(name in 1:length(HMM_output$sseqid)){
      names <- c(names, strsplit(as.character(as.factor(HMM_output$sseqid[name])), ",")[[1]][3])
    }
    
    if(length(HMM_output$qseqid) > 0){
      HMM_output <- HMM_output %>% group_by(qseqid) %>% filter(seq_score == max(seq_score)) %>% filter(row_number()==1)
      HMM_output <- HMM_output[order(HMM_output$qseqid),]
      HMM_output$qseqid <- as.character(paste0(HMM_output$qseqid, "    "))
      HMM_output$sseqid <- as.character(HMM_output$sseqid)
    }
    prodigal_table <- prodigal_table[prodigal_table$ID %in% HMM_output$qseqid, ]
    node_genes_filter <- NULL
    NODE_numbers <- NULL
    for(gene_name in prodigal_table$ID){
      NODE_numbers <- c(NODE_numbers, str_extract(gene_name, ".*_"))
    }
    NODE_numbers <- sort(unique(NODE_numbers))
    for(node in NODE_numbers){
      node_genes <- prodigal_table$ID[grep(node, prodigal_table$ID)]
      node_genes_order <- sort(as.numeric(str_extract(node_genes, "[[:digit:]]*$|[[:digit:]]*[[:space:]]*$")))
      for(node_gene in node_genes_order){
        node_genes_filter <- c(node_genes_filter, paste0(node, node_gene, "    "))
      }
    }
    prodigal_table <- prodigal_table[prodigal_table$ID %in% HMM_output$qseqid, ]
    prodigal_table <- prodigal_table[match(node_genes_filter, prodigal_table$ID),]
    HMM_output <- HMM_output[match(node_genes_filter, HMM_output$qseqid),]
    HMM_output$Orientation <- as.character(prodigal_table[prodigal_table$ID %in% HMM_output$qseqid, 4])
    HMM_output$Orientation <- gsub(" ", "", HMM_output$Orientation, fixed = TRUE)
    
    HMM_output$start <- as.character(prodigal_table[prodigal_table$ID %in% HMM_output$qseqid, 2])
    HMM_output$stop <- as.character(prodigal_table[prodigal_table$ID %in% HMM_output$qseqid, 3])
    
    HMM_output$nucleotide_sequence <- genome_nucleotide_sequence$Nucleotide_sequence[paste0(genome_nucleotide_sequence$ID, " ") %in% HMM_output$qseqid]
    HMM_output$protein_sequence <- genome_protein_sequence$Protein_sequence[paste0(genome_protein_sequence$ID, " ") %in% HMM_output$qseqid]
    
    #filters HMM_output on the thresholds per defense system, these include the minimum bitscore and coverage (see readme for more information)
    for(defense_system in Defense_systems){
      
      defense_system_gene_list <- unique(unlist(Defense_system_info(defense_system)$defense_system_types, use.names = F, recursive = F))
      
      defense_system_gene_list_bitscore <- Defense_system_info(defense_system)$bitscore
      defense_system_gene_list_coverage <- Defense_system_info(defense_system)$coverage

      HMM_output <- HMM_output[!c( HMM_output$sseqid %in% defense_system_gene_list & 
                                   (HMM_output$seq_score < defense_system_gene_list_bitscore |
                                   ((HMM_output$to_env_coord - HMM_output$from_env_coord) / HMM_output$qlen) < (defense_system_gene_list_coverage / 100)
                                        )), ]
      
      #HMM_threshold_temp <- temp[temp$seq_score >= defense_system_gene_list_bitscore, ]
      #HMM_threshold_temp <- HMM_threshold_temp[(HMM_threshold_temp$qlen / HMM_threshold_temp$slen) > 0.66 & (HMM_threshold_temp$qlen / HMM_threshold_temp$slen) < 1.5, ]
      #HMM_threshold_temp <- HMM_threshold_temp[((HMM_threshold_temp$to_env_coord - HMM_threshold_temp$from_env_coord) / HMM_threshold_temp$qlen) >= (defense_system_gene_list_coverage / 100), ]
      
    }
    
    #After the protein hits in the HMM file is filtered on the bitscore and coverage
    #The clusters of proteins within x number of genes are being searched for (default = 3):
    
    defense_system_clusters_df <- HMM_output
    cluster_counter <- cluster_number
    
    if(dim(defense_system_clusters_df)[1] >= 2){
      
      for(counter in 1:(dim(defense_system_clusters_df)[1]-1)){
        
        gene_1 <- as.numeric(str_extract(defense_system_clusters_df$qseqid[counter], "[[:digit:]]*$|[[:digit:]]*[[:space:]]*$"))
        gene_2 <- as.numeric(str_extract(defense_system_clusters_df$qseqid[counter+1], "[[:digit:]]*$|[[:digit:]]*[[:space:]]*$"))
          
        if(abs(gene_2 - gene_1) <= skippable_genes & str_extract(defense_system_clusters_df$qseqid[counter], ".*_") == str_extract(defense_system_clusters_df$qseqid[counter+1], ".*_")){
          cluster_counter <- c(cluster_counter, cluster_number)
        }else{
          cluster_number <- cluster_number + 1
          cluster_counter <- c(cluster_counter, cluster_number)
        }
      }
      
      #After the clusters are found, the cluster is being checked for a defense system according to the scoring scheme
      defense_system_clusters_df$cluster <- cluster_counter
      
      completeness <- NULL
      orientation_completeness <- NULL
      cluster_composition <- NULL
      cluster_start <- NULL
      cluster_stop <- NULL
      subtype <- NULL
      dftype <- ""
      
      for(cluster in unique(defense_system_clusters_df$cluster)){
        #temp <- defense_system_clusters_df[which(defense_system_clusters_df$cluster == cluster),]
        HMM_threshold_temp <- defense_system_clusters_df[which(defense_system_clusters_df$cluster == cluster),]
        
        #make total matrix per cluster
        total_matrix_per_cluster <- matrix("",ncol = 4, nrow = 1)
          
        for(defense_system in Defense_systems){
          
          defense_system_gene_list <- Defense_system_info(defense_system)$defense_system_types
          defense_system_gene_list_mandatory <- Defense_system_info(defense_system)$defense_system_types_mandatory
          defense_system_gene_list_accessory <- Defense_system_info(defense_system)$defense_system_types_accessory
          defense_system_gene_list_specific <- Defense_system_info(defense_system)$defense_system_types_specific
          defense_system_gene_list_forbidden <- Defense_system_info(defense_system)$defense_system_types_forbidden
          
          #defense_system_gene_list_bitscore <- Defense_system_info(defense_system)$bitscore
          #defense_system_gene_list_coverage <- Defense_system_info(defense_system)$coverage
          #defense_system_gene_list_composition_info <- Defense_system_info(defense_system)$composition_info
          
          #HMM_threshold_temp <- temp[temp$seq_score >= defense_system_gene_list_bitscore, ]
          #HMM_threshold_temp <- HMM_threshold_temp[(HMM_threshold_temp$qlen / HMM_threshold_temp$slen) > 0.66 & (HMM_threshold_temp$qlen / HMM_threshold_temp$slen) < 1.5, ]
          #HMM_threshold_temp <- HMM_threshold_temp[((HMM_threshold_temp$to_env_coord - HMM_threshold_temp$from_env_coord) / HMM_threshold_temp$qlen) >= (defense_system_gene_list_coverage / 100), ]
          
          #get info about single or multi gene
          #filter defense_system_clusters_df for multi or single gene threshold
          if(dim(HMM_threshold_temp)[1] > 0){
            for(subtype in names(defense_system_gene_list)){
              
              cluster_length <- dim(HMM_threshold_temp)[1]
              genes <- unique(HMM_threshold_temp$sseqid)
              
              score <- 0
              score <- score + length(which(defense_system_gene_list[[subtype]] %in% genes)) * 2
              #score <- score + length(which(defense_system_gene_list_accessory[[subtype]] %in% genes)) * 1
              #score <- score + length(which(defense_system_gene_list_specific[[subtype]] %in% genes)) * 2 
              score <- score - length(which(defense_system_gene_list_forbidden[[subtype]] %in% genes)) * 4  
  
              score <- score + length(which(defense_system_gene_list_accessory[[subtype]] %in% genes)) * 3  #temporary to make two gene clusters work 
              score <- score + length(which(defense_system_gene_list_specific[[subtype]] %in% genes)) * 6  #temporary to make single gene clusters work 
              
              total_matrix_per_cluster <- rbind(total_matrix_per_cluster, c(defense_system, subtype, score, cluster_length))
            }
          }
        }
        total_matrix_per_cluster <- as.data.frame(total_matrix_per_cluster)
        colnames(total_matrix_per_cluster) <- c("defense_system", "subtype", "score", "cluster_length")
        total_matrix_per_cluster <-  total_matrix_per_cluster[-1,]          
        
        if(ncol(total_matrix_per_cluster) == 4 & nrow(total_matrix_per_cluster) > 0){
        
          total_matrix_per_cluster$score <- as.numeric(as.character(total_matrix_per_cluster$score))
          total_matrix_per_cluster$cluster_length <- as.numeric(as.character(total_matrix_per_cluster$cluster_length))

          #putative cluster
          putative_total_matrix_per_cluster <- total_matrix_per_cluster[total_matrix_per_cluster$cluster_length >= 3 & total_matrix_per_cluster$score < 6 & total_matrix_per_cluster$score > 0, ]

          total_matrix_per_cluster <- total_matrix_per_cluster[total_matrix_per_cluster$score >= 6, ]
          cluster_type <- "none"
         
          if(dim(total_matrix_per_cluster)[1] > 0){
            if(length(unique(total_matrix_per_cluster$defense_system)) > 1){
              cluster_type <- "Hybrid"
              subtype <- paste(unique(total_matrix_per_cluster$subtype), collapse = " & ")
              dftype <- paste(unique(total_matrix_per_cluster$defense_system), collapse = " & ")
            }else if(length(unique(total_matrix_per_cluster$defense_system)) == 1 & length(unique(total_matrix_per_cluster$subtype)) > 1){
              cluster_type <- "Ambiguous"
              subtype <- paste(unique(total_matrix_per_cluster$subtype), collapse = " & ")
              dftype <- paste(unique(total_matrix_per_cluster$defense_system), collapse = " & ")
            }else{
              cluster_type <- "Complete"
              subtype <- paste(unique(total_matrix_per_cluster$subtype), collapse = " & ")
              dftype <- paste(unique(total_matrix_per_cluster$defense_system), collapse = " & ")
            }
          }
          if(dim(putative_total_matrix_per_cluster)[1] > 0 & cluster_type == "none" & length(unique(genes)) > 1){
            cluster_type <- "Putative"
            subtype <- paste(unique(putative_total_matrix_per_cluster$subtype), collapse = " & ")
            dftype <- paste(unique(putative_total_matrix_per_cluster$defense_system), collapse = " & ")
          }
           
          
          #output file values are being put in place per cluster
          orientation_completeness <- round((max(table(HMM_threshold_temp$Orientation))/sum(table(HMM_threshold_temp$Orientation)))*100,0)
          cluster_composition <- paste0(HMM_threshold_temp$sseqid, collapse = " & ")
          cluster_start <- min(HMM_threshold_temp$start)
          cluster_stop <- max(HMM_threshold_temp$stop)       
        
          HMM_threshold_temp$completeness <- cluster_type
          HMM_threshold_temp$orientation_completeness <- orientation_completeness
          HMM_threshold_temp$cluster_composition <- cluster_composition
          HMM_threshold_temp$defense_system <- dftype
          HMM_threshold_temp$contig <- str_extract(HMM_threshold_temp$qseqid,  ".*_")
          HMM_threshold_temp$genome <- genome
          HMM_threshold_temp$cluster_start <- cluster_start
          HMM_threshold_temp$cluster_stop <- cluster_stop
          HMM_threshold_temp$subtype <- subtype

          HMM_threshold_temp <- HMM_threshold_temp[HMM_threshold_temp$completeness != "none",]
          
          if(dim(HMM_threshold_temp)[1] > 0){
            output_df <- rbind(output_df, as.matrix(HMM_threshold_temp))
          }
        }
      }
    }
  }
}

#formatting of the output file
if(nrow(output_df) > 1){
  output_df <- output_df[-1,]

  output_df <- output_df[,c("genome","contig","defense_system","completeness","subtype","cluster_composition","orientation_completeness","cluster","cluster_start","cluster_stop","qseqid","sseqid","qlen","slen",
    "start","stop","Orientation","evalue","seq_score","seq_bias","ndom","of","cEvalue","iEvalue","domain_score","domain_bias","from_hmm_coord","to_hmm_coord","from_ali_coord","to_ali_coord",
    "from_env_coord","to_env_coord","acc","nucleotide_sequence","protein_sequence")]
  
  write.table(output_df, paste0(c(output_path, "Output_df.csv"), collapse = ""), row.names = F, sep = "\t")
  
  #output file for the visualization is being created
  if(visualize == "yes"){
    print("Visualizing the found clusters")
    output_df <- as.data.frame(output_df)
    output_df$genome_ID <- as.factor(paste0(output_df$genome, "_", output_df$cluster))
    output_df$sseqid <- as.factor(output_df$sseqid)
    output_df$Orientation_2 <- as.character(output_df$Orientation)
    output_df$Orientation_2[which(output_df$Orientation_2 == "-")] <- -1
    output_df$Orientation_2[which(output_df$Orientation_2 == "+")] <- 1
    output_df$Orientation_2 <- as.numeric(output_df$Orientation_2)
    output_df$start <- as.numeric(as.character(output_df$start))
    output_df$stop <- as.numeric(as.character(output_df$stop))
    output_df$sseqid <- as.character(output_df$sseqid)

    for(defense_system in unique(output_df$defense_system)){

      df_output_df <- output_df[output_df$defense_system == defense_system,]
      for (gene in unique(df_output_df$sseqid)){
        filtered_df_output_df <- df_output_df %>% group_by(genome_ID) %>% filter(any(sseqid == gene))
        
        #Visualization file is being created
        if(nrow(filtered_df_output_df) > 1){
          suppressWarnings({try({

          dummies <- make_alignment_dummies(
            filtered_df_output_df,
            aes(xmin = start, xmax = stop, y = genome_ID, id = sseqid),
            on = gene
          )

          p<-ggplot(filtered_df_output_df,aes(xmin=start,xmax=stop,y=genome_ID,fill=sseqid,label=sseqid,forward=Orientation_2))+
            geom_gene_arrow() +
            facet_wrap(~ genome_ID, scales = "free", ncol = 1)+
            theme_genes()+
            geom_blank(data = dummies, aes(forward = 1))+
            scale_fill_viridis(discrete = TRUE, alpha = 0.2)+
            geom_gene_label(align = "centre") 
          ggsave(filename = paste0(output_path, "Figures/", gsub(" ", "", defense_system, fixed = TRUE), "_", gene, "_presence.pdf"),
                 plot = p,
                 device = visualize_type,
                 #scale = 1,
                 width = 80,
                 height = 50,
                 units = 'in',
                 dpi = 300,
                 limitsize = FALSE)
            })})
          }
        }
      }
    
    
    }
  
  
  
}

#in case no defense systems are found: message that there are no defense systems present
if(nrow(output_df) == 1){
  print("No systems were found in any of the genomes")
}
