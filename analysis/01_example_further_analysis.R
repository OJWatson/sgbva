
# In this next script we nay want to do further analysis with the example
# data we created, which we can do by reading it in
df <- readRDS("analysis/data/derived_data/example.rds")

## Because this R file needs the example.rds file to exist to run, it must
# be run after 00_example_analysis_file.R, so it is numbered after 00 (i.e. 01_)
df$d <- df$a + 10
