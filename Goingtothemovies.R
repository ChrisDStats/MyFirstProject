library(tidyverse)
install.packages("ggplot2movies")
library(ggplot2movies)
library(modelr)

mtcars %>%
  mutate(car = rownames(.)) %>%
  View()


# 
# who %>%
#   gather(Measure, Value,-(country:year)) %>%
#   group_by(country, Measure) %>%
#   summarise(Avg = mean(Value, na.rm = TRUE)) %>%  #mistake in this line but can't spot it'
#   mutate(Avg = ifelse(is.nan(Avg),-99, Avg)
     
    library(ggplot2movies)
    library(modelr)
    movies %>%
      resample_partition(c(train = .7, test = .3)) ->
      movies_split
    
    movies_split$train %>%
      as_data_frame() %>%
      #mutate(year=(year-min(year))) %>%
      lm(
        rating ~ year + length + Action + Animation +
          Comedy + Drama + Documentary + Romance + Short,
        data = .) ->
      movies_ratings
    
    movies_split$test %>%
      as_data_frame() %>%
      #mutate(year=year-min(as_data_frame(movies_split$train)$year)) %>%
      add_predictions(model = movies_ratings) %>%
      mutate(residuals = rating - pred) %>%
      # filter(residuals<(-5)) %>%
      # View()
      ggplot(aes(x = residuals)) +
      geom_density()
    
    