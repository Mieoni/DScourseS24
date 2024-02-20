library(jsonlite)
library(tidyverse)

url <- 'https://www.vizgr.org/historical-events/search.php?format=json&begin_date=00000101&end_date=20240209&lang=en'
destination_file <- "dates.json"
download.file(url, destfile = destination_file, method = "auto")

mylist <- fromJSON('dates.json')
mydf <- bind_rows(mylist$result[-1])


#Check what type of an object is mydf$date
class(mydf$date)

# List the first 10 rows
head(mydf, 10)

