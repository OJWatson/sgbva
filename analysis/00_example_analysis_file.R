# Example analysis file

# load needed packages
library(ggplot2)

# load this package (sgbva)
devtools::load_all()

# read in some data
df <- read.csv("analysis/data/raw_data/example_raw_data.csv")

# use this data for some analysis
df$c <- df$a * df$b

# make a plot
gg <- ggplot(df, aes(a, c)) + geom_point()

# visualise the plot
gg

# save the plot in the plots directory
save_figs("example_plot", gg)

# save the table in the table directory
# this would be if we wanted to include this table in a manuscript easily
write.csv(df, "analysis/tables/example_table.csv")

# save the data object as an rds file in R
# this would be if we wanted to use this data in other R analysis files
# because it is data that we generated using code in this repo it goes in derived
# (i.e. it is derived from the code in this repository)
saveRDS(object = df, file = "analysis/data/derived_data/example.rds")

