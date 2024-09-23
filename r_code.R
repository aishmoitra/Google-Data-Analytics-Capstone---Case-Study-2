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


# Scatter plot of Average Sleep Duration vs. Average Heart Rate by User
ggplot(data=re_sleep_hr, aes(x = avg_sleep_duration, y = avg_heart_rate, color = factor(Id))) +
  geom_point() +
  labs(title = "Average Sleep Duration vs. Average Heart Rate by User",
       x = "Average Sleep Duration (minutes)",
       y = "Average Heart Rate (bpm)") +
  theme(legend.position = "right")


# Scatter plot of Average Weight vs. Average Steps by User
ggplot(data=re_weight_steps, aes(x = avg_weight, y = avg_steps, color = factor(Id))) +
  geom_point() +
  labs(title = "Average Weight vs. Average Steps by User",
       x = "Average Weight (kg)",
       y = "Average Steps") +
  theme(legend.position = "right")




