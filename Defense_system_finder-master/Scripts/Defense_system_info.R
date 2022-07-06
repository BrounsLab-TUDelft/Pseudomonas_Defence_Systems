###Template for your own defence system
### Remove the # and change the subtype name and gene names to your liking.
### To note is that the gene names must be the same as mentioned within the HMM file of that gene
### In HMM 3.0 it is the second line and starts with NAME
### After these changes, copy the edited template into the area annotated with ### insert edited template here ###.
#  if(Defense_system_name == "insert name of the defense system"){
#    defense_system_types <- list()
#    
#    defense_system_types[["Insert name of subtype 1"]] <- c("gene A", "gene B", "gene C", "gene D") #insert all genes that are present in subtype 1
#    defense_system_types[["Insert name of subtype 2"]] <- c("gene A", "gene D", "gene E", "gene F") #insert all genes that are present in subtype 2
#    
#    defense_system_types_mandatory <- list()
#    defense_system_types_mandatory[["Insert name of subtype 1"]] <- c("gene A", "gene B") #insert all mandaroty genes that are present in subtype 1 (2 points)
#    defense_system_types_mandatory[["Insert name of subtype 2"]] <- c("gene A", "gene D") #insert all mandaroty genes that are present in subtype 2 (2 points)
#
#    defense_system_types_accessory <- list()
#    defense_system_types_accessory[["Insert name of subtype 1"]] <- c("gene D") #insert all accessory genes that are present in subtype 1 (1 points)
#    defense_system_types_accessory[["Insert name of subtype 2"]] <- c("gene D") #insert all accessory genes that are present in subtype 2 (1 points)
#    
#    defense_system_types_specific <- list()
#    defense_system_types_specific[["Insert name of subtype 1"]] <- c("gene B", "gene C") #insert all specific genes that are present in subtype 1 (2 points)
#    defense_system_types_specific[["Insert name of subtype 2"]] <- c("gene E", "gene F") #insert all specific genes that are present in subtype 2 (2 points)
#
#    defense_system_types_forbidden <- list()
#    defense_system_types_forbidden[["Insert name of subtype 1"]] <- c() #insert all forbidden genes that are present in subtype 1 (-4 points)
#    defense_system_types_forbidden[["Insert name of subtype 2"]] <- c() #insert all forbidden genes that are present in subtype 2 (-4 points)      
#
#    return(list("composition_info" = "multigene",
#                "bitscore" = 25, #minimum bitscore per HMM profile (Koonin threshold: 25 for multigene, 50 for single-gene)
#                "coverage" = 30, #minimum coverage of the gene in the genome to be covered by the HMM (Koonin threshold: 30 for multigene, 70 for single-gene)
#                "defense_system_types" = defense_system_types, 
#                "defense_system_types_mandatory" = defense_system_types_mandatory, 
#                "defense_system_types_accessory" = defense_system_types_accessory, 
#                "defense_system_types_specific" = defense_system_types_specific, 
#                "defense_system_types_forbidden" = defense_system_types_forbidden))
#    }

Defense_system_info <- function(Defense_system_name){
  
  ### Insert edited template one line below here ###
  
  
  
  
  
  ### Don't edit anything below this line ###
  
  if(Defense_system_name == "BREX"){
    defense_system_types <- list()
    
    defense_system_types[["BREX Type 1"]] <- c("BrxA", "BrxB", "BrxCPglY", "PglX", "PglZ", "BrxL")
    defense_system_types[["BREX Type 2"]] <- c("PglW", "PglX", "BrxCPglY", "PglZ", "BrxD", "BrxHI")
    defense_system_types[["BREX Type 3"]] <- c("BrxCPglY", "PglXI", "BrxHII", "PglZ", "BrxA")
    defense_system_types[["BREX Type 4"]] <- c("BrxP", "BrxCPglY", "PglZ", "BrxL")
    defense_system_types[["BREX Type 5"]] <- c("BrxA", "BrxCPglY", "BrxB", "PglX", "PglZ", "BrxHII")
    defense_system_types[["BREX Type 6"]] <- c("BrxA", "BrxB", "BrxCPglY", "PglX", "PglZ", "BrxHI")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["BREX Type 1"]] <- c("BrxA", "BrxB", "BrxCPglY")
    defense_system_types_mandatory[["BREX Type 2"]] <- c("PglW", "PglX", "BrxCPglY")
    defense_system_types_mandatory[["BREX Type 3"]] <- c("BrxCPglY", "PglXI", "BrxHII")
    defense_system_types_mandatory[["BREX Type 4"]] <- c("BrxP", "BrxCPglY", "PglZ")
    defense_system_types_mandatory[["BREX Type 5"]] <- c("BrxA", "BrxCPglY", "BrxB", "PglX")
    defense_system_types_mandatory[["BREX Type 6"]] <- c("BrxA", "BrxB", "BrxCPglY")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["BREX Type 1"]] <- c("PglZ", "BrxL")
    defense_system_types_accessory[["BREX Type 2"]] <- c("BrxD", "BrxHI")
    defense_system_types_accessory[["BREX Type 3"]] <- c("PglZ", "BrxA")
    defense_system_types_accessory[["BREX Type 4"]] <- c("BrxL")
    defense_system_types_accessory[["BREX Type 5"]] <- c("PglX", "PglZ", "BrxHII")
    defense_system_types_accessory[["BREX Type 6"]] <- c("PglZ", "BrxHI")  
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["BREX Type 1"]] <- c("PglZ")
    defense_system_types_specific[["BREX Type 2"]] <- c("BrxD")
    defense_system_types_specific[["BREX Type 3"]] <- c("PglZ")
    defense_system_types_specific[["BREX Type 4"]] <- c("BrxL")
    defense_system_types_specific[["BREX Type 5"]] <- c("PglX")
    defense_system_types_specific[["BREX Type 6"]] <- c("PglZ")      
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["BREX Type 1"]] <- c()
    defense_system_types_forbidden[["BREX Type 2"]] <- c()
    defense_system_types_forbidden[["BREX Type 3"]] <- c()
    defense_system_types_forbidden[["BREX Type 4"]] <- c()
    defense_system_types_forbidden[["BREX Type 5"]] <- c()
    defense_system_types_forbidden[["BREX Type 6"]] <- c()          
    
    return(list("composition_info" = "multigene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  
  if(Defense_system_name =="DND"){
    defense_system_types <- list()
    defense_system_types[["DndBCDE"]] <- c("DndB", "DndC", "DndD", "DndE")
    defense_system_types[["DndFGH"]] <- c("DndF", "DndG", "DndH")
    return(defense_system_types)
  }   
  if(Defense_system_name =="Gabija"){
    defense_system_types <- list()
    defense_system_types[["Gabija"]] <- c("GajA","GajB")
    return(defense_system_types)
  }    
  if(Defense_system_name =="Hachiman"){
    defense_system_types <- list()
    defense_system_types[["Hachiman"]] <- c("HamA","HamB")
    return(defense_system_types)
  }    
  if(Defense_system_name =="Kiwa"){
    defense_system_types <- list()
    defense_system_types[["Kiwa"]] <- c("KwaA","KwaB")
    return(defense_system_types)
  }    
  if(Defense_system_name =="Lamassu"){
    defense_system_types <- list()
    defense_system_types[["Lamassu"]] <- c("LmuA","LmuB")
    return(defense_system_types)
  }   
  if(Defense_system_name =="Septu"){
    defense_system_types <- list()
    defense_system_types[["Septu"]] <- c("PtuA","PtuB")
    return(defense_system_types)
  }   
  if(Defense_system_name =="Thoeris"){
    defense_system_types <- list()
    defense_system_types[["Thoeris"]] <- c("ThsA","ThsB")
    return(defense_system_types)
  }    
  if(Defense_system_name =="Wadjet"){
    defense_system_types <- list()
    defense_system_types[["WAdjet"]] <- c("JetA","JetB","JetC","JetD")
    defense_system_types[["WAjettest"]] <- "WAD_1"
    return(defense_system_types)
  }    
  if(Defense_system_name =="Zorya"){
    defense_system_types <- list()
    defense_system_types[["Zorya Type I"]] <- c("ZorA","ZorB","ZorC","ZorD")
    defense_system_types[["Zorya Type II"]] <- c("ZorA","ZorB","ZorE")    
    return(defense_system_types)
  }    
  if(Defense_system_name =="Druantia"){
    defense_system_types <- list()
    defense_system_types[["Druantia Type I"]] <- c("DruA","DruB","DruC","DruD","DruE")
    defense_system_types[["Druantia Type II"]] <- c("DruM","DruF","DruG","DruE")
    defense_system_types[["Druantia Type III"]] <- c("DruE","DruH")
    return(defense_system_types)
  }    
  if(Defense_system_name =="DISARM"){
    defense_system_types <- list()
    defense_system_types[["DISARM"]] <- c("DrmA", "DrmB", "DrmC", "DrmD", "DrmMI", "DrmMII")
    return(defense_system_types)
  }    
  if(Defense_system_name =="RM"){
    defense_system_types <- list()
    defense_system_types[["RM Type I"]] <- c("Msubunit", "Rsubunit", "Ssubunit")
    defense_system_types[["RM Type II"]] <- c("methyltransferase", "restriction")
    return(defense_system_types)
  }    
  if(Defense_system_name =="SspABCDE"){
    defense_system_types <- list()
    defense_system_types[["SspBCD"]] <- c("sspB","sspC","sspD")
    defense_system_types[["SspE"]] <- c("SspE")
    return(defense_system_types)
  }    
  if(Defense_system_name =="PAgos"){
    defense_system_types <- list()
    defense_system_types[["PAgos"]] <- c("PAgos")
    return(defense_system_types)
  }
  if(Defense_system_name =="ABI"){
    defense_system_types <- list()
    defense_system_types[["abiE"]] <- "abiEii"
    defense_system_types[["abiG"]] <- "abiGi"
    defense_system_types[["abiH"]] <- "abiH"
    defense_system_types[["abiJ"]] <- "abiJ"
    defense_system_types[["abiK"]] <- "abiK"
    defense_system_types[["abiL"]] <- c("abiLi", "abiLii")
    defense_system_types[["abiO"]] <- "abiO"
    defense_system_types[["abiQ"]] <- "abiQ"
    defense_system_types[["abiR"]] <- "abiR"
    defense_system_types[["abiU"]] <- "abiU"
    defense_system_types[["abiV"]] <- "abiV"
    defense_system_types[["liT"]] <- "liT"
    defense_system_types[["pifA"]] <- "pifA"
    defense_system_types[["prrC"]] <- "prrC"
    defense_system_types[["rexAB"]] <- c("rexA","rexB")
    return(defense_system_types)
  }    
  if(Defense_system_name =="Shedu"){
    defense_system_types <- list()
    defense_system_types[["Shedu"]] <- c("SduA")
    return(defense_system_types)
  }
  if(Defense_system_name =="Retron_TIR_1"){
    defense_system_types <- list()  
    defense_system_types[["Retron_TIR_1"]] <- "RT_TIR_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Retron_TIR_1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Retron_TIR_1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Retron_TIR_1"]] <- c("RT_TIR_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Retron_TIR_1"]] <- c()
    
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  
  if(Defense_system_name =="Ec67_2"){
    defense_system_types <- list()  
    defense_system_types[["Ec67_2"]] <- "RT_TOPRIM_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Ec67_2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Ec67_2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Ec67_2"]] <- c("RT_TOPRIM_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Ec67_2"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="Ec88_3"){
    defense_system_types <- list()    
    defense_system_types[["Ec88_3"]] <- c("Ec86_nucleosidase_RT_pA_v0", "Ec86_nucleosidase_RT_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Ec88_3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Ec88_3"]] <- c("Ec86_nucleosidase_RT_pA_v0", "Ec86_nucleosidase_RT_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Ec88_3"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Ec88_3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  
  if(Defense_system_name =="Ec78_4"){
    defense_system_types <- list()    
    defense_system_types[["Ec78_4"]] <- c("Ec78_pA_v0", "Ec78_pB_v0", "Ec78_pC_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Ec78_4"]] <- c("Ec78_pA_v0", "Ec78_pB_v0", "Ec78_pC_v0")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Ec78_4"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Ec78_4"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Ec78_4"]] <- c()
    
    return(list("composition_info" = "triplegene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DRT_type_1_5"){
    defense_system_types <- list()    
    defense_system_types[["DRT_type_1_5"]] <- "RT_nitrilase_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DRT_type_1_5"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DRT_type_1_5"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DRT_type_1_5"]] <- c("RT_nitrilase_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DRT_type_1_5"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DRT_type_2_6"){
    defense_system_types <- list()    
    defense_system_types[["DRT_type_2_6"]] <- "RT_98299_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DRT_type_2_6"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DRT_type_2_6"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DRT_type_2_6"]] <- c("RT_98299_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DRT_type_2_6"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DRT_type_3_7"){
    defense_system_types <- list()    
    defense_system_types[["DRT_type_3_7"]] <- c("RT_x2_pA_v0", "RT_x2_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DRT_type_3_7"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DRT_type_3_7"]] <- c("RT_x2_pA_v0", "RT_x2_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DRT_type_3_7"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DRT_type_3_7"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DRT_type_4_8"){
    defense_system_types <- list()    
    defense_system_types[["DRT_type_4_8"]] <- "RT_345_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DRT_type_4_8"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DRT_type_4_8"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DRT_type_4_8"]] <- c("RT_345_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DRT_type_4_8"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DRT_type_5_9"){
    defense_system_types <- list()    
    defense_system_types[["DRT_type_5_9"]] <- "RT_85485_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DRT_type_5_9"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DRT_type_5_9"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DRT_type_5_9"]] <- c("RT_85485_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DRT_type_5_9"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="RADAR_10"){
    defense_system_types <- list()    
    defense_system_types[["RADAR_10"]] <- c("Adenosine_deaminase_pA_v0", "Adenosine_deaminase_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RADAR_10"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RADAR_10"]] <- c("Adenosine_deaminase_pA_v0", "Adenosine_deaminase_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RADAR_10"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RADAR_10"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="apeA_11"){
    defense_system_types <- list()    
    defense_system_types[["apeA_11"]] <- "ApeA_T1_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["apeA_11"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["apeA_11"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["apeA_11"]] <- c("ApeA_T1_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["apeA_11"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="AVAST_type_1_12"){
    defense_system_types <- list()    
    defense_system_types[["AVAST_type_1_12"]] <- "Protease_AAA35_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["AVAST_type_1_12"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["AVAST_type_1_12"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["AVAST_type_1_12"]] <- c("Protease_AAA35_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["AVAST_type_1_12"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="AVAST_type_2_13"){
    defense_system_types <- list()    
    defense_system_types[["AVAST_type_2_13"]] <- "Unknown_AAA35_unknown_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["AVAST_type_2_13"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["AVAST_type_2_13"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["AVAST_type_2_13"]] <- c("Unknown_AAA35_unknown_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["AVAST_type_2_13"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="AVAST_type_3_14"){
    defense_system_types <- list()   
    defense_system_types[["AVAST_type_3_14"]] <- "DUF4297_AAA35_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["AVAST_type_3_14"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["AVAST_type_3_14"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["AVAST_type_3_14"]] <- c("DUF4297_AAA35_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["AVAST_type_3_14"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="AVAST_type_4_15"){
    defense_system_types <- list()   
    defense_system_types[["AVAST_type_4_15"]] <- "RE_AAA35_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["AVAST_type_4_15"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["AVAST_type_4_15"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["AVAST_type_4_15"]] <- c("RE_AAA35_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["AVAST_type_4_15"]] <- c()
    
    return(list("composition_info" = "singlgene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="AVAST_type_5_16"){
    defense_system_types <- list()    
    defense_system_types[["AVAST_type_5_16"]] <- "SIR2_AAA35_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["AVAST_type_5_16"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["AVAST_type_5_16"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["AVAST_type_5_16"]] <- c("SIR2_AAA35_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["AVAST_type_5_16"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="dsr1_17"){
    defense_system_types <- list()    
    defense_system_types[["dsr1_17"]] <- "SIR2_DUF4020_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["dsr1_17"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["dsr1_17"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["dsr1_17"]] <- c("SIR2_DUF4020_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["dsr1_17"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="dsr2_18"){
    defense_system_types <- list()    
    defense_system_types[["dsr2_18"]] <- "SIR2_TPR_HEAT_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["dsr2_18"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["dsr2_18"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["dsr2_18"]] <- c("SIR2_TPR_HEAT_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["dsr2_18"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="SIR2_HerA_19"){
    defense_system_types <- list()   
    defense_system_types[["SIR2_HerA_19"]] <- c("SIR2_HerA_pA_v0", "SIR2_HerA_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["SIR2_HerA_19"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["SIR2_HerA_19"]] <- c("SIR2_HerA_pA_v0", "SIR2_HerA_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["SIR2_HerA_19"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["SIR2_HerA_19"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="DUF4297_STAND_20"){
    defense_system_types <- list()    
    defense_system_types[["DUF4297_STAND_20"]] <- c("DUF4297_HerA_pA_v0", "DUF4297_HerA_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["DUF4297_STAND_20"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["DUF4297_STAND_20"]] <- c("DUF4297_HerA_pA_v0", "DUF4297_HerA_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["DUF4297_STAND_20"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["DUF4297_STAND_20"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="tmn_21"){
    defense_system_types <- list()    
    defense_system_types[["tmn_21"]] <- "Transmembrane_KAP_ATPase_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["tmn_21"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["tmn_21"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["tmn_21"]] <- c("Transmembrane_KAP_ATPase_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["tmn_21"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="qatABCD_22"){
    defense_system_types <- list()    
    defense_system_types[["qatABCD_22"]] <- c("KAP_unknown_QueC_TatD_pA_v0", "KAP_unknown_QueC_TatD_pB_v0", "KAP_unknown_QueC_TatD_pC_v0", "KAP_unknown_QueC_TatD_pD_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["qatABCD_22"]] <- c("KAP_unknown_QueC_TatD_pA_v0", "KAP_unknown_QueC_TatD_pB_v0", "KAP_unknown_QueC_TatD_pC_v0", "KAP_unknown_QueC_TatD_pD_v0")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["qatABCD_22"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["qatABCD_22"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["qatABCD_22"]] <- c()
    
    return(list("composition_info" = "fourgene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="hhe_23"){
    defense_system_types <- list()    
    defense_system_types[["hhe_23"]] <- "DUF4011_helicase_Vsr_DUF3320_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["hhe_23"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["hhe_23"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["hhe_23"]] <- c("DUF4011_helicase_Vsr_DUF3320_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["hhe_23"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="mzaABCDE_24"){
    defense_system_types <- list()    
    defense_system_types[["mzaABCDE_24"]] <- c("Multi_Gene_pA_v0", "Multi_Gene_pB_v0", "Multi_Gene_pC_v0", "Multi_Gene_pD_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["mzaABCDE_24"]] <- c("Multi_Gene_pA_v0", "Multi_Gene_pB_v0", "Multi_Gene_pC_v0", "Multi_Gene_pD_v0")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["mzaABCDE_24"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["mzaABCDE_24"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["mzaABCDE_24"]] <- c()
    
    return(list("composition_info" = "fourgene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="TerY_P_25"){
    defense_system_types <- list()    
    defense_system_types[["TerY_P_25"]] <- c("VWA_phosphatase_kinase_pA_v0", "VWA_phosphatase_kinase_pB_v0", "VWA_phosphatase_kinase_pC_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["TerY_P_25"]] <- c("VWA_phosphatase_kinase_pA_v0", "VWA_phosphatase_kinase_pB_v0", "VWA_phosphatase_kinase_pC_v0")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["TerY_P_25"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["TerY_P_25"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["TerY_P_25"]] <- c()
    
    return(list("composition_info" = "threegene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="upx_26"){
    defense_system_types <- list()    
    defense_system_types[["upx_26"]] <- "DUF1887CTD_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["upx_26"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["upx_26"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["upx_26"]] <- c("DUF1887CTD_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["upx_26"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="ppl_27"){
    defense_system_types <- list()    
    defense_system_types[["ppl_27"]] <- "Phosphoesterase_PHP_SMC_pA_v0"
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["ppl_27"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["ppl_27"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["ppl_27"]] <- c("Phosphoesterase_PHP_SMC_pA_v0")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["ppl_27"]] <- c()
    
    return(list("composition_info" = "singlegene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="ietAS_28"){
    defense_system_types <- list()    
    defense_system_types[["ietAS_28"]] <- c("ATPase_serine_protease_pA_v0", "ATPase_serine_protease_pB_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["ietAS_28"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["ietAS_28"]] <- c("ATPase_serine_protease_pA_v0", "ATPase_serine_protease_pB_v0")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["ietAS_28"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["ietAS_28"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="Restriction_like_system_29"){
    defense_system_types <- list()  
    defense_system_types[["Restriction_like_system_29"]] <- c("DUF499_DUF1156_pA_v0", "DUF499_DUF1156_pB_v0", "DUF499_DUF1156_pC_v0")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Restriction_like_system_29"]] <- c("DUF499_DUF1156_pA_v0", "DUF499_DUF1156_pB_v0", "DUF499_DUF1156_pC_v0")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Restriction_like_system_29"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Restriction_like_system_29"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Restriction_like_system_29"]] <- c()
    
    return(list("composition_info" = "threegene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }

#Retrons by ..
  if(Defense_system_name =="RT_Type_I_A"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_I_A"]] <- c("atpase_cluster22_1_alignment", "hnh_cluster39_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_I_A"]] <- c("atpase_cluster22_1_alignment", "hnh_cluster39_1_alignment")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_I_A"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_I_A"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_I_A"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  } 
  if(Defense_system_name =="RT_Type_I_B"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_I_B1"]] <- c("atpase_toprim_cluster22_2_alignment")
    defense_system_types[["RT_Type_I_B2"]] <- c("atpase_toprim_cluster159_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_I_B1"]] <- c()
    defense_system_types_mandatory[["RT_Type_I_B2"]] <- c()

    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_I_B1"]] <- c("atpase_toprim_cluster22_2_alignment")
    defense_system_types_accessory[["RT_Type_I_B2"]] <- c("atpase_toprim_cluster159_1_alignment")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_I_B1"]] <- c()
    defense_system_types_specific[["RT_Type_I_B2"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_I_B1"]] <- c()
    defense_system_types_forbidden[["RT_Type_I_B2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_I_C"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_I_C1"]] <- c("RT_typeIC1_alignment")
    defense_system_types[["RT_Type_I_C2"]] <- c("RT_typeIC2_alignment")
    defense_system_types[["RT_Type_I_C3"]] <- c("RT_typeIC3_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_I_C1"]] <- c()
    defense_system_types_mandatory[["RT_Type_I_C2"]] <- c()
    defense_system_types_mandatory[["RT_Type_I_C3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_I_C1"]] <- c()
    defense_system_types_accessory[["RT_Type_I_C2"]] <- c()
    defense_system_types_accessory[["RT_Type_I_C3"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_I_C1"]] <- c("RT_typeIC1_alignment")
    defense_system_types_specific[["RT_Type_I_C2"]] <- c("RT_typeIC2_alignment")
    defense_system_types_specific[["RT_Type_I_C3"]] <- c("RT_typeIC3_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_I_C1"]] <- c()
    defense_system_types_forbidden[["RT_Type_I_C2"]] <- c()
    defense_system_types_forbidden[["RT_Type_I_C3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }     
  if(Defense_system_name =="RT_Type_II"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_II_A1"]] <- c("ndt_cluster42_2_alignment")
    defense_system_types[["RT_Type_II_A2"]] <- c("ndt_cluster42_3_alignment")
    defense_system_types[["RT_Type_II_A3"]] <- c("ndt_cluster42_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_II_A1"]] <- c()
    defense_system_types_mandatory[["RT_Type_II_A2"]] <- c()
    defense_system_types_mandatory[["RT_Type_II_A3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_II_A1"]] <- c()
    defense_system_types_accessory[["RT_Type_II_A2"]] <- c()
    defense_system_types_accessory[["RT_Type_II_A3"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_II_A1"]] <- c("RT_typeIC1_alignment")
    defense_system_types_specific[["RT_Type_II_A2"]] <- c("RT_typeIC2_alignment")
    defense_system_types_specific[["RT_Type_II_A3"]] <- c("RT_typeIC3_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_II_A1"]] <- c()
    defense_system_types_forbidden[["RT_Type_II_A2"]] <- c()
    defense_system_types_forbidden[["RT_Type_II_A3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }  
  if(Defense_system_name =="RT_Type_III"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_III_A1"]] <- c("prtase_cluster113_1_alignment", "wh_cluster742_1_alignment")
    defense_system_types[["RT_Type_III_A2"]] <- c("prtase_cluster113_4_alignment", "wh_cluster1121_1_alignment")
    defense_system_types[["RT_Type_III_A3"]] <- c("prtase_wh_cluster67_3_alignment")
    defense_system_types[["RT_Type_III_A4"]] <- c("prtase_wh_cluster67_2b_alignment")
    defense_system_types[["RT_Type_III_A5"]] <- c("prtase_various_cluster_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_III_A1"]] <- c()
    defense_system_types_mandatory[["RT_Type_III_A2"]] <- c()
    defense_system_types_mandatory[["RT_Type_III_A3"]] <- c()
    defense_system_types_mandatory[["RT_Type_III_A4"]] <- c()
    defense_system_types_mandatory[["RT_Type_III_A5"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_III_A1"]] <- c("prtase_cluster113_1_alignment", "wh_cluster742_1_alignment")
    defense_system_types_accessory[["RT_Type_III_A2"]] <- c("prtase_cluster113_4_alignment", "wh_cluster1121_1_alignment")
    defense_system_types_accessory[["RT_Type_III_A3"]] <- c()
    defense_system_types_accessory[["RT_Type_III_A4"]] <- c()
    defense_system_types_accessory[["RT_Type_III_A5"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_III_A1"]] <- c()
    defense_system_types_specific[["RT_Type_III_A2"]] <- c()
    defense_system_types_specific[["RT_Type_III_A3"]] <- c("prtase_wh_cluster67_3_alignment")
    defense_system_types_specific[["RT_Type_III_A4"]] <- c("prtase_wh_cluster67_2b_alignment")
    defense_system_types_specific[["RT_Type_III_A5"]] <- c("prtase_various_cluster_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_III_A1"]] <- c()
    defense_system_types_forbidden[["RT_Type_III_A2"]] <- c()
    defense_system_types_forbidden[["RT_Type_III_A3"]] <- c()
    defense_system_types_forbidden[["RT_Type_III_A4"]] <- c()
    defense_system_types_forbidden[["RT_Type_III_A5"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }    
  if(Defense_system_name =="RT_Type_IV"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_IV"]] <- c("2tm_cluster826_1_alignment")

    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_IV"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_IV"]] <- c()

    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_IV"]] <- c("2tm_cluster826_1_alignment")

    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_IV"]] <- c()

    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_IX"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_IX"]] <- c("hepn_1740_cluster1740_1_alignment", "hth_cluster1093_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_IX"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_IX"]] <- c("hepn_1740_cluster1740_1_alignment", "hth_cluster1093_1_alignment")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_IX"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_IX"]] <- c()
    
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_V"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_V"]] <- c("csd_cluster85_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_V"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_V"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_V"]] <- c("csd_cluster85_1_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_V"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_VI"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_VI_I"]] <- c("hth_cluster2_1_alignment","sp_cluster2075_1_alignment")
    defense_system_types[["RT_Type_VI_II"]] <- c("hth_cluster2_1_alignment", "sp_cluster2760_1_alignment")
    defense_system_types[["RT_Type_VI_III"]] <- c("hth_cluster2_1_alignment", "sp_cluster3272_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_VI_I"]] <- c()
    defense_system_types_mandatory[["RT_Type_VI_II"]] <- c()
    defense_system_types_mandatory[["RT_Type_VI_III"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_VI_I"]] <- c("hth_cluster2_1_alignment","sp_cluster2075_1_alignment")
    defense_system_types_accessory[["RT_Type_VI_II"]] <- c("hth_cluster2_1_alignment", "sp_cluster2760_1_alignment")
    defense_system_types_accessory[["RT_Type_VI_III"]] <- c("hth_cluster2_1_alignment", "sp_cluster3272_1_alignment")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_VI_I"]] <- c()
    defense_system_types_specific[["RT_Type_VI_II"]] <- c()
    defense_system_types_specific[["RT_Type_VI_III"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_VI_I"]] <- c()
    defense_system_types_forbidden[["RT_Type_VI_II"]] <- c()
    defense_system_types_forbidden[["RT_Type_VI_III"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_VII"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_VII"]] <- c("duf3800_cluster2165_1_alignment","RT_typeVI")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_VII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_VII"]] <- c("duf3800_cluster2165_1_alignment","RT_typeVI")
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_VII"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_VII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }   
  if(Defense_system_name =="RT_Type_VIII"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_VIII"]] <- c("duf626_cluster2446_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_VIII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_VIII"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_VIII"]] <- c("duf626_cluster2446_1_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_VIII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }  
  if(Defense_system_name =="RT_Type_X"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_X"]] <- c("cluster2273_1_alignment")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_X"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_X"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_X"]] <- c("cluster2273_1_alignment")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_X"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }  
  if(Defense_system_name =="RT_Type_XI"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_XI"]] <- c("RT_typeXI")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_XI"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_XI"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_XI"]] <- c("RT_typeXI")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_XI"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }  
  if(Defense_system_name =="RT_Type_XII"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_XII"]] <- c("RT_typeXII")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_XII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_XII"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_XII"]] <- c("RT_typeXII")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_XII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
  if(Defense_system_name =="RT_Type_XIII"){
    defense_system_types <- list()  
    defense_system_types[["RT_Type_XIII_I"]] <- c("heat-arm_cluster216_2_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types[["RT_Type_XIII_II"]] <- c("heat-arm_cluster259_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types[["RT_Type_XIII_III"]] <- c("heat-arm_cluster1688_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types[["RT_Type_XIII_IV"]] <- c("heat-arm_cluster3262_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")

    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["RT_Type_XIII_I"]] <- c("heat-arm_cluster216_2_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types_mandatory[["RT_Type_XIII_II"]] <- c("heat-arm_cluster259_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types_mandatory[["RT_Type_XIII_III"]] <- c("heat-arm_cluster1688_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    defense_system_types_mandatory[["RT_Type_XIII_IV"]] <- c("heat-arm_cluster3262_1_alignment", "wgr-heat_cluster216_1_alignment", "znfinger_cluster114_1_alignment")
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["RT_Type_XIII_I"]] <- c()
    defense_system_types_accessory[["RT_Type_XIII_II"]] <- c()
    defense_system_types_accessory[["RT_Type_XIII_III"]] <- c()
    defense_system_types_accessory[["RT_Type_XIII_IV"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["RT_Type_XIII_I"]] <- c()
    defense_system_types_specific[["RT_Type_XIII_II"]] <- c()
    defense_system_types_specific[["RT_Type_XIII_III"]] <- c()
    defense_system_types_specific[["RT_Type_XIII_IV"]] <- c()
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["RT_Type_XIII_I"]] <- c()
    defense_system_types_forbidden[["RT_Type_XIII_II"]] <- c()
    defense_system_types_forbidden[["RT_Type_XIII_III"]] <- c()
    defense_system_types_forbidden[["RT_Type_XIII_IV"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 25,
                "coverage" = 30,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }  


  
  #######################################
  
if(Defense_system_name =="Ec107like"){
    defense_system_types <- list()  
    defense_system_types[["Ec107like"]] <- c("Ec107like")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["Ec107like"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["Ec107like"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["Ec107like"]] <- c("Ec107like")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["Ec107like"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IC2"){
    defense_system_types <- list()  
    defense_system_types[["type_IC2"]] <- c("type_IC2")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IC2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IC2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IC2"]] <- c("type_IC2")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IC2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
 if(Defense_system_name =="type_IIIA2"){
    defense_system_types <- list()  
    defense_system_types[["type_IIIA2"]] <- c("type_IIIA2")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIIA2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIIA2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIIA2"]] <- c("type_IIIA2")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIIA2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_V"){
    defense_system_types <- list()  
    defense_system_types[["type_V"]] <- c("type_V")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_V"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_V"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_V"]] <- c("type_V")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_V"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }

if(Defense_system_name =="type_XI"){
    defense_system_types <- list()  
    defense_system_types[["type_XI"]] <- c("type_XI")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_XI"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_XI"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_XI"]] <- c("type_XI")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_XI"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="outgroup"){
    defense_system_types <- list()  
    defense_system_types[["outgroup"]] <- c("outgroup")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["outgroup"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["outgroup"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["outgroup"]] <- c("outgroup")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["outgroup"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IC3"){
    defense_system_types <- list()  
    defense_system_types[["type_IC3"]] <- c("type_IC3")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IC3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IC3"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IC3"]] <- c("type_IC3")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IC3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIIA3"){
    defense_system_types <- list()  
    defense_system_types[["type_IIIA3"]] <- c("type_IIIA3")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIIA3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIIA3"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIIA3"]] <- c("type_IIIA3")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIIA3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_VI"){
    defense_system_types <- list()  
    defense_system_types[["type_VI"]] <- c("type_VI")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_VI"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_VI"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_VI"]] <- c("type_VI")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_VI"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_XII"){
    defense_system_types <- list()  
    defense_system_types[["type_XII"]] <- c("type_XII")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_XII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_XII"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_XII"]] <- c("type_XII")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_XII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IA"){
    defense_system_types <- list()  
    defense_system_types[["type_IA"]] <- c("type_IA")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IA"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IA"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IA"]] <- c("type_IA")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IA"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIA1"){
    defense_system_types <- list()  
    defense_system_types[["type_IIA1"]] <- c("type_IIA1")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIA1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIA1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIA1"]] <- c("type_IIA1")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIA1"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIIA4"){
    defense_system_types <- list()  
    defense_system_types[["type_IIIA4"]] <- c("type_IIIA4")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIIA4"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIIA4"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIIA4"]] <- c("type_IIIA4")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIIA4"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_VIIA1"){
    defense_system_types <- list()  
    defense_system_types[["type_VIIA1"]] <- c("type_VIIA1")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_VIIA1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_VIIA1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_VIIA1"]] <- c("type_VIIA1")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_VIIA1"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_XIII"){
    defense_system_types <- list()  
    defense_system_types[["type_XIII"]] <- c("type_XIII")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_XIII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_XIII"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_XIII"]] <- c("type_XIII")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_XIII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IB1"){
    defense_system_types <- list()  
    defense_system_types[["type_IB1"]] <- c("type_IB1")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IB1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IB1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IB1"]] <- c("type_IB1")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IB1"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIA2"){
    defense_system_types <- list()  
    defense_system_types[["type_IIA2"]] <- c("type_IIA2")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIA2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIA2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIA2"]] <- c("type_IIA2")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIA2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIIA5"){
    defense_system_types <- list()  
    defense_system_types[["type_IIIA5"]] <- c("type_IIIA5")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIIA5"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIIA5"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIIA5"]] <- c("type_IIIA5")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIIA5"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_VIIA2"){
    defense_system_types <- list()  
    defense_system_types[["type_VIIA2"]] <- c("type_VIIA2")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_VIIA2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_VIIA2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_VIIA2"]] <- c("type_VIIA2")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_VIIA2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IB2"){
    defense_system_types <- list()  
    defense_system_types[["type_IB2"]] <- c("type_IB2")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IB2"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IB2"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IB2"]] <- c("type_IB2")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IB2"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIA3"){
    defense_system_types <- list()  
    defense_system_types[["type_IIA3"]] <- c("type_IIA3")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIA3"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIA3"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIA3"]] <- c("type_IIA3")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIA3"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IV"){
    defense_system_types <- list()  
    defense_system_types[["type_IV"]] <- c("type_IV")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IV"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IV"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IV"]] <- c("type_IV")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IV"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_VIII"){
    defense_system_types <- list()  
    defense_system_types[["type_VIII"]] <- c("type_VIII")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_VIII"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_VIII"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_VIII"]] <- c("type_VIII")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_VIII"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IC1"){
    defense_system_types <- list()  
    defense_system_types[["type_IC1"]] <- c("type_IC1")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IC1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IC1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IC1"]] <- c("type_IC1")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IC1"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IIIA1"){
    defense_system_types <- list()  
    defense_system_types[["type_IIIA1"]] <- c("type_IIIA1")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IIIA1"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IIIA1"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IIIA1"]] <- c("type_IIIA1")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IIIA1"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_IX"){
    defense_system_types <- list()  
    defense_system_types[["type_IX"]] <- c("type_IX")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_IX"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_IX"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_IX"]] <- c("type_IX")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_IX"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
if(Defense_system_name =="type_X"){
    defense_system_types <- list()  
    defense_system_types[["type_X"]] <- c("type_X")
    
    defense_system_types_mandatory <- list()
    defense_system_types_mandatory[["type_X"]] <- c()
    
    defense_system_types_accessory <- list()
    defense_system_types_accessory[["type_X"]] <- c()
    
    defense_system_types_specific <- list()
    defense_system_types_specific[["type_X"]] <- c("type_X")
    
    defense_system_types_forbidden <- list()
    defense_system_types_forbidden[["type_X"]] <- c()
    
    return(list("composition_info" = "twogene",
                "bitscore" = 50,
                "coverage" = 70,
                "defense_system_types" = defense_system_types, 
                "defense_system_types_mandatory" = defense_system_types_mandatory, 
                "defense_system_types_accessory" = defense_system_types_accessory, 
                "defense_system_types_specific" = defense_system_types_specific, 
                "defense_system_types_forbidden" = defense_system_types_forbidden))
  }
}
