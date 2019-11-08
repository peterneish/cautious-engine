# Analysis script for my project

#create some data
apples <- data.frame(apple_id = as.factor(1:1000), 
                    weight = rnorm(1000,5,1))
write.csv(apples, 'data/apples_data.csv', row.names = FALSE)

#read data
apples <- read.csv('data/apples_data.csv')

#process data
apples$log_weight <-(log(apples$weight))

# graphing
png('figs/hist_apple_weight.png') # makes the plot device the png file instead of the plot window
ggplot2::ggplot(apples, aes(weight)) + geom_histogram()
dev.off() # turns off the plot device

# we ran some of these commands in the tutorial
#u sethis::use_readme_md()
# usethis::use_mit_license(name = "Peter Neish")