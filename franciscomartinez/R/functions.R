#' @title
#' getURL_entrez
#' @description  
#' It creates url from entrez identifiers.
#' @param id ENTREZ identifiers
#' @return 
#' The corresponding URL's in the database.
#' @export
#' @family URL generation
getURL_entrez = function(id)
  ifelse(id == "NA",NA,
         paste("<a href='http://www.ncbi.nlm.nih.gov/gene/?term=",
               id,"'>",id,"</a>",sep=""))

#' @title
#' getURL_ensembl
#' @description
#' It creates url from ensembl identifiers.
#' @param id ENSEMBL identifiers
#' @return 
#' The corresponding URL's in the database.
#' @export
#' @family URL generation
getURL_ensembl = function(id)
  ifelse(id == "NA",NA,
         paste("<a href='http://www.ensembl.org/id/",
               id,"'>",id,"</a>",sep=""))

#' @title
#' getURL_WBC
#' @description  
#' It creates url from WBCgene identifiers.
#' @param id WBCgene identifiers
#' @return 
#' The corresponding URL's in the database.
#' @export
#' @family URL generation
getURL_WBC = function(id)
    ifelse(id == "NA",NA,
           paste("<a href='http://www.wormbase.org/species/c_elegans/gene/",
                 id,"'>",id,"</a>",sep=""))

#' @title
#' getGroupName
#' @description  
#' This function is used to get the group name from downloaded gene groups using getGenesets function from EnrichmentBrowser.
#' @param x Group name as it is downloaded, "_" between words
#' @return 
#' The corresponding gene set group in the database.
#' @export
#' @family Naming
getGroupName = function(x)
    unlist(strsplit(x,split="_"))[1]