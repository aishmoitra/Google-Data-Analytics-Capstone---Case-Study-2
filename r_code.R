## Use R to create a scatter plot on correlation of sleep and activity level
install.packages("ggplot2")
library(ggplot2)
data(re_sleep_steps)
View(re_sleep_steps)
ggplot(data=re_sleep_steps, aes(x = avg_sleep_duration, y = avg_steps, color = factor(Id))) +
  geom_point() +
  labs(title = "Average Steps vs. Average Sleep Duration by User",
       x = "Average Sleep Duration (minutes)",
       y = "Average Steps") +
  theme(legend.position = "right")


#Scatter plot on correlation of sleep and heart rate
data(re_sleep_hr)
View(re_sleep_hr)
ggplot(data=re_sleep_hr, aes(x = avg_sleep_duration, y = avg_heart_rate)) +
  geom_point(color = 'blue') +
  labs(title = "Sleep Duration vs Heart Rate",
       x = "Average Sleep Duration (minutes)",
       y = "Average Heart Rate (bpm)") +
  theme_minimal()

#Scatter plot of correlation of weight with activity levels
data(re_weight_steps)
View(re_weight_steps)
ggplot(data=re_weight_steps, aes(x = avg_weight, y = avg_steps)) +
  geom_point(color = 'purple') +
  labs(title = "Scatter Plot of Weight vs Steps",
       x = "Average Weight (kg)",
       y = "Average Steps") +
  theme_minimal()




