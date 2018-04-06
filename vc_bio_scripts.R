# Functions for scraping VC bios

library(rvest)
library(tidyverse)


get_people <- function(url, nodestring){
  html_session(url) %>% 
    html_nodes(nodestring) %>% 
    html_text()
}

get_bios <- function(url, nodestring, namelist, company){
  html_session(url) %>% 
    follow_link(namelist[i]) %>% 
    html_nodes(nodestring) %>% 
    html_text() %>% 
    data_frame() %>% 
    mutate(name = namelist[i], firm = company)
}

colnames <- c("text", "name", "firm")
