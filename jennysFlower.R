options(repr.plot.width = 4, repr.plot.height = 4)
library("ggplot2")

# Make a dandelion
angle <- pi*(3-(sqrt(5)))
points <- 500
t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t), alpha = 0.5, color = "black", shape=8) +
  theme(
    plot.title = NULL,
    panel.background = element_rect(fill = "white"),
    panel.grid = element_blank(),
    axis.title = element_blank(),
    axis.ticks = element_blank(),
    axis.text = element_blank(),
    legend.position = "none"
  )

# Make a sunflower
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t), alpha = 0.5, color = "yellow", shape=17) +
  theme(
    plot.title = NULL,
    panel.background = element_rect(fill = "darkmagenta"),
    panel.grid = element_blank(),
    axis.title = element_blank(),
    axis.ticks = element_blank(),
    axis.text = element_blank(),
    legend.position = "none"
  )

# Sunflower with alpha angle of 2.0
angle <- 2
points <- 1000
t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t), alpha = 0.5, color = "yellow", shape=17) +
  theme(
    plot.title = NULL,
    panel.background = element_rect(fill = "darkmagenta"),
    panel.grid = element_blank(),
    axis.title = element_blank(),
    axis.ticks = element_blank(),
    axis.text = element_blank(),
    legend.position = "none"
  )

# Final flower
angle <- 13*(pi/180)
points <- 2000
t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
goosey.data.frame <- data.frame(t, x, y)
jennys.flower <- ggplot(goosey.data.frame, aes(x*t, y*t)) + 
  geom_point(size = 90, alpha = 0.1, color = "magenta4", shape = 1,
             stroke = .5) + 
  theme(plot.title = NULL, panel.background = element_rect(fill = "white"),
        panel.grid = element_blank(), axis.title = element_blank(), 
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        legend.position = "none")
jennys.flower
