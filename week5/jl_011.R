## Class meeting 11 script

gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia")
gap_asia_2007

write_csv(gap_asia_2007,"exported_file.csv")

# using here::here package:
# instead of using working directory

write_csv(gap_asia_2007,here::here("data","cm011_data","exported_file.csv"))
read_csv(here::here("data","cm011_data","exported_file.csv"))

url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"
read_csv(url)

# using excel: 

library("readxl") 

xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(xls_url,here::here("data","cm011_data","some_file.xls"))

read_excel(here::here("data","cm011_data",file_name))

mri_file = here::here("data","cm011_data","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:K12")
file_name <- basename(xls_url)
download.file(xls_url,here::here("data","cm011_data",file_name))